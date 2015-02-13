#ifndef FORMATS_ARC_NPA_ARCHIVE
#define FORMATS_ARC_NPA_ARCHIVE
#include "formats/archive.h"

class NpaArchive final : public Archive
{
public:
    NpaArchive();
    ~NpaArchive();
    void add_cli_help(ArgParser &) const override;
    void parse_cli_options(ArgParser &) override;
    void unpack_internal(VirtualFile &, OutputFiles &) const override;
private:
    struct Context;
    Context *context;
};

#endif
