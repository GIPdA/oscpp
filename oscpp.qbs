import qbs

Product {
    Depends { name: "cpp" }

    cpp.cxxLanguageVersion: "c++14"

    cpp.includePaths: [path+"/include"]

    files: [
        "include/**/*.hpp"
    ]

    Export {
        Depends { name: 'cpp' }
        cpp.includePaths: product.cpp.includePaths
    }
}
