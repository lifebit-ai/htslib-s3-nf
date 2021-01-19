# htslib-s3-nf

An example nextflow for using s3 file in htslib tools without staging 

## samtools

```bash
nextflow main.nf --input test_samtools.csv --samtools_view
```

## bcftools


```bash
nextflow main.nf --input test_bcftools.csv --bcftools_view
```