void flush_input_buffer(void)
{
    int c = 0;
 
    while(c != '\n' && c != EOF)
        c = getchar();
}
