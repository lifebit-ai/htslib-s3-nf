Channel
    .fromPath(params.input)
    .splitCsv(skip:1)
    .map {sample_name, input_file -> [sample_name, input_file] }
    .set { ch_input }

if (params.samtools_view){
    process samtools_view {
        echo true
        
        input:
        set val(name), val(bam_file) from ch_input
        
        script:
        """
        samtools view ${bam_file} | head -n 3
        """
    }
}

if (params.bcftools_view){
    process bcftools_view {
        echo true
        
        input:
        set val(name), val(vcf_file) from ch_input
        
        script:
        """
        bcftools view ${vcf_file}
        """
    }
}