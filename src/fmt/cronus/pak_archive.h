#ifndef AU_FMT_CRONUS_PAK_ARCHIVE_H
#define AU_FMT_CRONUS_PAK_ARCHIVE_H
#include "fmt/archive.h"

namespace au {
namespace fmt {
namespace cronus {

    class PakArchive final : public Archive
    {
    public:
        PakArchive();
        ~PakArchive();
    protected:
        bool is_recognized_internal(File &) const override;
        void unpack_internal(File &, FileSaver &) const override;
    private:
        struct Priv;
        std::unique_ptr<Priv> p;
    };

} } }

#endif
