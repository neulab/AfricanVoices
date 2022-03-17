export this=bin/do_found
$this prune_silences

# Pass 0 (in v/ but becomes v0/)
# First slicing with crosslingual acoustic model
$this v_init
# Might be extra char mapping required (only rarelyn)

# Utterance slicing
$this v_islice_para download/flist `v/bin/find_num_available_cpu`
# Collect sliced utts
$this v_collect

# Pass 0 (v/)
# Do some alignment checks to remove outliers
$this v_rm_nan_aligned
# Build a synthetic voice
$this v_build
# Resynthesize each utt and score how well it synthesizes
$this v_check

# Reslice with first level target-language language model
# move v/ to v0/ and starts again with better acoustic model
$this v_reinit_target_lang
$this v_islice_para download/flist `v/bin/find_num_available_cpu`
$this v_collect

# Remove illaligned, build voice and remove utts that don't synthesis well
$this v_rm_nan_aligned
$this v_build
$this v_check

# Put the files into the aligned/ directory
$this get_aligned
