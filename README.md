Did this to make priginal demo.sh files. Then hand edited for use with
demo-magic.sh

```bash
for f in ??_bash_examples.txt
do
  echo "./mkdemo.sh $f > ${f/%.txt/demo.sh}"
  ./mkdemo.sh $f > ${f/%.txt/.demo.sh}
done
```

To run each demo.sh

> bash demo.sh
