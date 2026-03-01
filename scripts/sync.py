#!/bin/python3

file_src = 'compiler/raw.asm'      
file_dst = 'main.asm'  
start_word = "main>"          
end_word = "end."            
rts_word = "rts"

with open(file_src, 'r', encoding='utf-8') as f:
    src_content = f.read()

middle_part = src_content.split(start_word)[1].split(end_word)[0].rsplit(rts_word)[0]
new_block = start_word + middle_part + '\n' + end_word


with open(file_dst, 'r', encoding='utf-8') as f:
    dst_content = f.read()

    before_block = dst_content.split(start_word)[0] 
    after_block = dst_content.split(end_word)[1]  

    final_text = before_block + new_block + after_block

with open(file_dst, 'w', encoding='utf-8') as f:
    f.write(final_text)

