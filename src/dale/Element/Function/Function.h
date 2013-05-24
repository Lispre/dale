#ifndef DALE_ELEMENT_FUNCTION
#define DALE_ELEMENT_FUNCTION

#include "../Type/Type.h"
#include "../Variable/Variable.h"
#include <vector>

namespace dale
{
namespace Element
{
class Function
{
public:
    Element::Type *return_type;
    std::vector<Element::Variable *> *parameter_types;
    llvm::Function *llvm_function;
    int is_macro;
    std::string *internal_name;
    int always_inline;
    std::string once_tag;
    int cto;
    int is_destructor;
    int is_setf_fn;

    Function();
    Function(Element::Type *return_type,
             std::vector<Element::Variable *> *parameter_types,
             llvm::Function *llvm_function,
             int is_macro,
             std::string *internal_name,
             int always_inline = 0);
    ~Function();

    int isVarArgs(void);
    unsigned int numberOfRequiredArgs(void);
    int isEqualTo(Element::Function *fn);
    int attrsAreEqual(Element::Function *fn);
};
}
}

#endif