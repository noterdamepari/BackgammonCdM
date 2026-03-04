#!/bin/python3

file_src = 'compiler/raw.asm'      
file_dst = 'main.asm'  
start_word_src = "mend"          
start_word_dst = "rsect main"
end_word = "end."            

with open(file_src, 'r', encoding='utf-8') as f:
    src_content = f.read()

middle_part = src_content.split(start_word_src)[1].split(end_word)[0]
new_block = middle_part + end_word
# print(new_block)


with open(file_dst, 'r', encoding='utf-8') as f:
    dst_content = f.read()

    before_block = dst_content.split(start_word_dst)[0]
    # print(before_block)
    after_block = dst_content.split(end_word)[1]  

    final_text = before_block + start_word_dst + new_block + after_block
    # print(final_text)

with open(file_dst, 'w', encoding='utf-8') as f:
    f.write(final_text)

