class ExceptionLayer implements Exception {
 String cause;
 ExceptionLayer(this.cause);
 @override
 String toString(){
 return cause;
 }
}
