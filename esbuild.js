const fs = require('fs')
const path = require('path')
const esbuild = require('esbuild')

const lambdaDir = `src`
const outDir = `dist`
const entryPoints = fs
    .readdirSync(path.join(__dirname, lambdaDir))
    .map((entry) => `${lambdaDir}/${entry}`)

esbuild.build({
    entryPoints,
    bundle: true,
    outdir: path.join(__dirname, outDir),
    outbase: lambdaDir,
    platform: 'node',
    sourcemap: 'inline',
    treeShaking: true,
    sourcesContent: false,
    minify: true,
})
    .then(() => console.log('Build complete!'))
    .catch(() => console.error('Build failed!'));
