import ./cpp_wrapper

{.compile: "cpp_parser.c".}
{.compile: "src/scanner.cc".}
{.passl: "-ltree-sitter".}
{.passl: "-lstdc++".}

import hmisc/wrappers/treesitter
import hmisc/types/colorstring

var str = """
class Counter {
    Q_PROPERTY(QColor color MEMBER m_color NOTIFY colorChanged)

    public slots: void setValue(int value);
    public: void test();
};
"""

let node = parseCppString(addr str)

echo treeRepr[TsCppNode, CppNodeKind](
  node.getTs(), node.getBase(), unnamed = true)
