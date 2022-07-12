#include "Server.h"

/*
*Constructs new Server with session id sid that connects to  T io. T is the type of the IO Channel.
*/
Server::Server(int sid, int port){
    this->sid = sid;
    io = new NetIO(nullptr, port);
    key = this->initKey();
}

// Calculates an array of 256 bools from an array of 32 bytes
bool* Server::toBoolArray32(uint8_t* a){
    bool* res = new bool[SHA3_OUTPUT_SIZE];
    for (int i = 0; i < 32; ++i){
        for (int j = 0; j < 8; ++j){
            //msb of bytes is left. lsb is right
            res[i*8+j] = (a[i]>>(7-j))%2;
        }

    }
    return res;
}

bool* Server::initKey(){
    //for test pruposes use zero key. Actually add random choice of key
    bool* key = new bool[AES_KEY_SIZE];
    for(int i = 0; i < AES_KEY_SIZE; i++){
        key[i] = false;
    }
    return key;
}


void Server::serverCmplt(const int ssid){
    //dummy input for User. User will set the right one
    bool dummy_input[128];
    Integer a(AES_INPUT_SIZE, dummy_input, BOB);
    Integer b(AES_KEY_SIZE, key, ALICE);
    Integer c(AES_INPUT_SIZE, (long long) 0, BOB);

    io->sync();
    ProtocolExecution::prot_exec->do_batched_ot();
    
    io->sync();
    cf->compute(c.bits, a.bits, b.bits);

    //TODO check if the server really needs to call this; Maybe just the user
    c.reveal<bool*>(BOB);
}

int main(int argc, char* argv[]){
    if(argc < 2) {
        cerr << "Not enough arguments provided." << endl;
    } else {
        int sid = atoi(argv[1]);
        //Parse arguments
        int port = atoi(argv[2]);

        //Setup everything
        Server s(sid, port);
        int ssid = 1;
        s.cf = new CircuitFile(circuit_filename.c_str());
        cout << "Circuit file found" << endl;
        int numIterations = 3;
        //Actual evaluation            
        for(int i = 0; i < numIterations;++i){
            setup_semi_honest(s.io, ALICE, AES_INPUT_SIZE + AES_KEY_SIZE);
            s.serverCmplt(ssid);
        }
        cout << "Server complete" << endl;    
    }

}