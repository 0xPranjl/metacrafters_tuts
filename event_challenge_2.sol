
pragma solidity >=0.7.0 <0.9.0;

contract eventchal{

event studentadd(string indexed name,int indexed id);
event studentclass(string indexed name,int indexed class);
event studentstream(string indexed name,string stream);

function studentaddf(string memory _naam,int _id) public {
    emit studentadd(_naam,_id);
}
function studentclassf(string memory _naam,int _class) public {
    emit studentadd(_naam,_class);
}
function studentstreamf(string memory _naam,string memory _stream) public {
    emit studentstream(_naam,_stream);
}

}