class InputEncrypt{
  void oneDrawInput(){
  if (oneTimeFileOpen==0)
  {
    selectInput("Select a file to process:", "fileSelected");
    oneTimeFileOpen=1;
  }

  }
}
