$namespaces:
  sbg: 'https://www.sevenbridges.com/'
id: align_find_frequent
label: align_find_frequent_sas
class: CommandLineTool
cwlVersion: v1.0
baseCommand: align_find_frequent
doc: ''
inputs: 
    align: 
        type: File
        inputBinding:
            prefix: -input
    ifmt:
        type: string
        default: 'seq-align-set'
        inputBinding:
            prefix: -ifmt
    out_name:
        type: string
        default: 'frequent.seq_ids'
        inputBinding:
            prefix: -out
    row:
        type: integer
        default: 1
        inputBinding:
            prefix: -row
    threshold:
        type: integer
        default: 10
        inputBinding:
            prefix: -threshold
outputs: 
    frequent:
        type: File
        outputBinding:
            glob: $(inputs.out_name)



