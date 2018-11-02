# my-sagemaker-notebook-lifecycle
個人用Sagemaker Notebookのlifecycle設定

```
$ sw_vers
ProductName:    Mac OS X
ProductVersion: 10.13.6
BuildVersion:   17G65
```

## create lifecycle

[create-notebook-instance-lifecycle-config — AWS CLI 1.16.46 Command Reference](https://docs.aws.amazon.com/cli/latest/reference/sagemaker/create-notebook-instance-lifecycle-config.html)

```
$ aws sagemaker create-notebook-instance-lifecycle-config \
--notebook-instance-lifecycle-config-name my-notebook-lifecycle
```


## update lifecycle

```
$ ENCODED_SH=$(base64 -i my-lifecycle-onstart.sh)

$ aws sagemaker update-notebook-instance-lifecycle-config \
--notebook-instance-lifecycle-config-name my-notebook-lifecycle \
--on-start Content=$ENCODED_SH
```

[update-notebook-instance-lifecycle-config — AWS CLI 1.16.46 Command Reference](https://docs.aws.amazon.com/cli/latest/reference/sagemaker/update-notebook-instance-lifecycle-config.html)


## attach to notebook instance

```
$ aws sagemaker update-notebook-instance \
--notebook-instance-name test \
--lifecycle-config-name my-notebook-lifecycle
```