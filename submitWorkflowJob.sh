rm jobIDfile
rm -r jo
rm -r SandboxDir
./makeWorkflowJob.sh
glite-wms-job-submit -a -r ce07.esc.qmul.ac.uk:8443/cream-sge-sl6_lcg_2G_long -o jobIDfile proteomicsWorkflow.jdl
