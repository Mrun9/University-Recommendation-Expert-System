:- module(knowledge_base, [
    university_requirements/9,
    safe_university/1,
    target_university/1,
    ambitious_university/1
]).

% University database
university_requirements(massachusetts_institute_of_technology_mit, ms, cs, 8.21, 325, 114, ['it'], no, yes).
university_requirements(massachusetts_institute_of_technology_mit, phd, cs, 8.27, not_required, 113, ['math'], no, no).
university_requirements(massachusetts_institute_of_technology_mit, ms, ds, 9.4, 332, 107, ['ds', 'math', 'statistics'], no, yes).
university_requirements(massachusetts_institute_of_technology_mit, ms, hci, 8.09, 330, 114, ['ee', 'eee', 'it', 'math'], yes, no).
university_requirements(massachusetts_institute_of_technology_mit, ms, cs, 9.73, 321, 100, ['math'], yes, yes).
university_requirements(massachusetts_institute_of_technology_mit, phd, ds, 9.7, not_required, 111, ['ds', 'it', 'math', 'statistics'], no, no).
university_requirements(stanford_university, ms, cs, 8.5, 326, 96, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee', 'it'], yes, no).
university_requirements(stanford_university, phd, cs, 9.2, 327, 105, ['ds', 'ee', 'eee', 'statistics'], no, no).
university_requirements(stanford_university, ms, cs, 9.28, 335, 112, ['math'], yes, no).
university_requirements(stanford_university, phd, information_technology, 8.24, 324, 97, ['ai', 'ce', 'cs', 'cse', 'ds', 'math'], no, yes).
university_requirements(stanford_university, phd, information_technology, 9.78, 326, 104, ['ai', 'ce', 'cs', 'cse', 'ds', 'it', 'statistics'], yes, yes).
university_requirements(stanford_university, ms, information_technology, 9.54, 320, 115, ['ai', 'ce', 'cs', 'cse', 'ds', 'it', 'math'], no, yes).
university_requirements(harvard_university, ms, cs, 8.98, 322, 98, ['ai', 'ce', 'cs', 'cse', 'ds', 'it', 'math'], no, no).
university_requirements(harvard_university, phd, cs, 8.49, not_required, 115, ['it'], no, no).
university_requirements(harvard_university, phd, hpc, 8.62, not_required, 103, ['ai', 'ce', 'cs', 'cse', 'ds', 'statistics'], no, yes).
university_requirements(harvard_university, ms, cybersecurity, 9.22, 333, 101, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee'], yes, no).
university_requirements(harvard_university, ms, hci, 8.78, 321, 103, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee'], no, yes).
university_requirements(harvard_university, phd, ai, 9.03, not_required, 98, ['ee', 'eee'], no, no).
university_requirements(princeton_university, ms, cs, 8.94, 330, 115, ['ai', 'ce', 'cs', 'cse', 'ds'], no, no).
university_requirements(princeton_university, phd, cs, 9.7, 330, 100, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee', 'math'], yes, yes).
university_requirements(princeton_university, ms, ds, 8.57, 332, 103, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee', 'statistics'], yes, yes).
university_requirements(princeton_university, ms, cs, 8.8, 323, 100, ['ai', 'ce', 'cs', 'cse', 'ds'], no, no).
university_requirements(princeton_university, ms, hci, 8.08, 329, 101, ['it', 'math'], yes, yes).
university_requirements(yale_university, ms, cs, 9.25, 334, 104, ['ai', 'ce', 'cs', 'cse', 'ds', 'it', 'math'], no, yes).
university_requirements(yale_university, phd, cs, 8.1, 324, 95, ['ai', 'ce', 'cs', 'cse', 'ds', 'statistics'], yes, yes).
university_requirements(yale_university, phd, cybersecurity, 9.88, 320, 105, ['ai', 'ce', 'cs', 'cse', 'ds', 'it'], no, yes).

university_requirements(columbia_university, ms, cs, 9.09, 326, 104, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee', 'it'], no, yes).
university_requirements(columbia_university, phd, cs, 8.73, 330, 98, ['ai', 'ce', 'cs', 'cse', 'ds', 'it', 'statistics'], no, no).
university_requirements(columbia_university, phd, cybersecurity, 8.6, not_required, 107, ['ai', 'ce', 'cs', 'cse', 'ds', 'math', 'statistics'], no, no).
university_requirements(columbia_university, ms, cybersecurity, 9.09, 325, 108, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee', 'math'], no, yes).
university_requirements(columbia_university, phd, cs, 9.71, not_required, 109, ['ee', 'eee', 'it'], yes, no).
university_requirements(columbia_university, ms, hci, 8.08, 323, 99, ['ds', 'math', 'statistics'], no, no).
university_requirements(university_of_pennsylvania, ms, cs, 8.46, 334, 112, ['ds', 'statistics'], no, yes).
university_requirements(university_of_pennsylvania, phd, cs, 8.58, 329, 97, ['ds', 'it', 'statistics'], no, no).
university_requirements(university_of_pennsylvania, ms, ds, 9.01, 331, 97, ['ds', 'statistics'], yes, yes).
university_requirements(california_institute_of_technology_caltech, ms, cs, 8.86, 333, 106, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee'], no, yes).
university_requirements(california_institute_of_technology_caltech, phd, cs, 8.73, 327, 95, ['math'], yes, no).
university_requirements(california_institute_of_technology_caltech, ms, ai, 8.36, 328, 104, ['ai', 'ce', 'cs', 'cse', 'ds'], no, no).
university_requirements(california_institute_of_technology_caltech, ms, hpc, 8.69, 332, 105, ['ds', 'ee', 'eee', 'math', 'statistics'], no, no).
university_requirements(johns_hopkins_university, ms, cs, 8.68, 334, 104, ['ee', 'eee'], no, yes).
university_requirements(johns_hopkins_university, phd, cs, 9.44, not_required, 112, ['ee', 'eee', 'math'], yes, no).
university_requirements(johns_hopkins_university, ms, ai, 9.28, 335, 95, ['ds', 'math', 'statistics'], yes, no).
university_requirements(johns_hopkins_university, phd, cybersecurity, 8.83, 332, 106, ['ds', 'ee', 'eee', 'math', 'statistics'], no, no).
university_requirements(johns_hopkins_university, phd, information_technology, 9.29, 322, 105, ['ai', 'ce', 'cs', 'cse', 'ds'], yes, yes).
university_requirements(johns_hopkins_university, phd, cs, 9.48, 328, 95, ['ai', 'ce', 'cs', 'cse', 'ds', 'it'], no, no).
university_requirements(university_of_chicago, ms, cs, 9.63, 326, 95, ['math'], no, yes).
university_requirements(university_of_chicago, phd, cs, 9.65, not_required, 100, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee', 'math'], no, yes).
university_requirements(university_of_chicago, ms, ai, 8.16, 331, 102, ['ee', 'eee'], yes, no).
university_requirements(university_of_chicago, phd, cs, 8.42, 320, 110, ['ai', 'ce', 'cs', 'cse', 'ds', 'math'], yes, yes).
university_requirements(cornell_university, ms, cs, 8.93, 323, 103, ['ee', 'eee', 'it', 'math'], no, no).
university_requirements(cornell_university, phd, cs, 9.75, not_required, 108, ['ai', 'ce', 'cs', 'cse', 'ds'], no, no).
university_requirements(cornell_university, ms, ds, 9.02, 328, 106, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee', 'it'], yes, yes).
university_requirements(cornell_university, phd, information_technology, 9.62, not_required, 99, ['ai', 'ce', 'cs', 'cse', 'ds'], no, yes).
university_requirements(cornell_university, ms, hci, 8.97, 335, 101, ['ds', 'ee', 'eee', 'statistics'], no, no).
university_requirements(cornell_university, phd, hpc, 8.89, not_required, 110, ['ee', 'eee', 'it', 'math'], no, no).

university_requirements(northwestern_university, ms, cs, 8.39, 335, 109, ['it'], no, no).
university_requirements(northwestern_university, phd, cs, 8.01, not_required, 110, ['ds', 'statistics'], no, no).
university_requirements(northwestern_university, ms, information_technology, 9.13, 321, 102, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee'], yes, yes).
university_requirements(northwestern_university, phd, hci, 9.54, not_required, 105, ['math'], no, no).
university_requirements(northwestern_university, ms, hpc, 9.47, 320, 112, ['ai', 'ce', 'cs', 'cse', 'ds', 'statistics'], yes, yes).
university_requirements(northwestern_university, phd, cs, 8.53, not_required, 111, ['ds', 'ee', 'eee', 'it', 'statistics'], yes, no).
university_requirements(duke_university, ms, cs, 9.6, 325, 95, ['ai', 'ce', 'cs', 'cse', 'ds', 'math'], yes, yes).
university_requirements(duke_university, phd, cs, 8.08, not_required, 111, ['ai', 'ce', 'cs', 'cse', 'ds', 'it', 'statistics'], yes, no).
university_requirements(duke_university, ms, information_technology, 10.0, 328, 110, ['ai', 'ce', 'cs', 'cse', 'ds', 'it'], yes, no).
university_requirements(duke_university, ms, cs, 9.67, 325, 109, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee', 'math'], yes, yes).
university_requirements(university_of_virginia, ms, cs, 8.86, 323, 103, ['ee', 'eee', 'it'], yes, no).
university_requirements(university_of_virginia, phd, cs, 9.47, not_required, 101, ['ee', 'eee', 'math'], yes, no).
university_requirements(university_of_virginia, phd, ds, 9.19, 330, 111, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee', 'statistics'], no, yes).
university_requirements(university_of_north_carolina_at_chapel_hill, ms, cs, 9.45, 323, 111, ['ee', 'eee'], no, yes).
university_requirements(university_of_north_carolina_at_chapel_hill, phd, cs, 9.87, not_required, 101, ['ds', 'statistics'], yes, no).
university_requirements(university_of_north_carolina_at_chapel_hill, ms, information_technology, 8.42, 333, 105, ['ee', 'eee', 'math'], yes, yes).
university_requirements(university_of_north_carolina_at_chapel_hill, ms, cybersecurity, 8.39, 330, 98, ['ai', 'ce', 'cs', 'cse', 'ds', 'it', 'statistics'], no, no).
university_requirements(vanderbilt_university, ms, cs, 9.14, 331, 104, ['ai', 'ce', 'cs', 'cse', 'ds', 'math'], no, yes).
university_requirements(vanderbilt_university, phd, cs, 9.46, 329, 100, ['math'], yes, no).
university_requirements(vanderbilt_university, ms, hpc, 9.12, 321, 101, ['ds', 'ee', 'eee', 'math', 'statistics'], no, yes).
university_requirements(vanderbilt_university, ms, hci, 8.5, 325, 107, ['math'], yes, no).
university_requirements(vanderbilt_university, phd, cybersecurity, 8.21, 332, 95, ['math'], no, no).
university_requirements(vanderbilt_university, ms, ai, 8.76, 322, 100, ['ds', 'math', 'statistics'], yes, yes).
university_requirements(rice_university, ms, cs, 9.35, 321, 106, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee', 'statistics'], yes, no).
university_requirements(rice_university, phd, cs, 9.47, 320, 107, ['ds', 'ee', 'eee', 'it', 'statistics'], yes, yes).
university_requirements(rice_university, ms, hci, 9.54, 328, 112, ['ee', 'eee', 'it'], yes, no).
university_requirements(rice_university, phd, hpc, 8.02, not_required, 107, ['ds', 'ee', 'eee', 'it', 'statistics'], no, yes).
university_requirements(rice_university, phd, cybersecurity, 9.67, not_required, 113, ['ds', 'statistics'], yes, no).
university_requirements(university_of_florida, ms, cs, 9.01, 310, 98, ['ai', 'ce', 'cs', 'cse', 'ds'], yes, yes).
university_requirements(university_of_florida, phd, cs, 8.43, not_required, 101, ['ai', 'ce', 'cs', 'cse', 'ds', 'it', 'statistics'], no, yes).
university_requirements(university_of_florida, phd, information_technology, 9.0, not_required, 98, ['math'], yes, yes).
university_requirements(university_of_florida, phd, hpc, 9.26, 312, 112, ['ee', 'eee', 'it', 'math'], yes, yes).
university_requirements(university_of_texas_at_austin, ms, cs, 9.31, 315, 110, ['ds', 'it', 'math', 'statistics'], no, no).
university_requirements(university_of_texas_at_austin, phd, cs, 9.26, not_required, 112, ['ai', 'ce', 'cs', 'cse', 'ds', 'math', 'statistics'], no, no).
university_requirements(university_of_texas_at_austin, ms, hpc, 8.06, 323, 100, ['ee', 'eee', 'it'], yes, no).
university_requirements(university_of_wisconsin-madison, ms, cs, 8.42, 321, 111, ['it'], no, yes).
university_requirements(university_of_wisconsin-madison, phd, cs, 9.0, not_required, 100, ['ai', 'ce', 'cs', 'cse', 'ds'], no, no).
university_requirements(university_of_wisconsin-madison, phd, hpc, 8.74, not_required, 101, ['ai', 'ce', 'cs', 'cse', 'ds', 'it', 'math'], yes, yes).
university_requirements(university_of_wisconsin-madison, phd, hpc, 9.84, not_required, 110, ['it'], no, yes).
university_requirements(university_of_wisconsin-madison, phd, hci, 9.09, 321, 99, ['ai', 'ce', 'cs', 'cse', 'ds', 'math'], yes, no).
university_requirements(university_of_wisconsin-madison, phd, cs, 8.7, 316, 95, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee'], no, no).
university_requirements(university_of_illinois_urbana-champaign, ms, cs, 9.96, 328, 101, ['ai', 'ce', 'cs', 'cse', 'ds', 'math', 'statistics'], no, no).
university_requirements(university_of_illinois_urbana-champaign, phd, cs, 9.18, not_required, 114, ['ai', 'ce', 'cs', 'cse', 'ds', 'it', 'math'], yes, yes).
university_requirements(university_of_illinois_urbana-champaign, phd, ai, 9.21, not_required, 113, ['ee', 'eee', 'it', 'math'], no, yes).
university_requirements(pennsylvania_state_university, ms, cs, 8.17, 321, 109, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee'], no, no).
university_requirements(pennsylvania_state_university, phd, cs, 8.24, 320, 111, ['ds', 'ee', 'eee', 'it', 'statistics'], no, yes).
university_requirements(pennsylvania_state_university, ms, hci, 8.72, 330, 108, ['it'], no, no).
university_requirements(pennsylvania_state_university, ms, information_technology, 8.28, 324, 112, ['ai', 'ce', 'cs', 'cse', 'ds'], yes, yes).
university_requirements(pennsylvania_state_university, ms, cybersecurity, 9.02, 322, 106, ['math'], no, yes).
university_requirements(pennsylvania_state_university, phd, cybersecurity, 8.57, 326, 102, ['math'], yes, no).
university_requirements(ohio_state_university, ms, cs, 9.03, 319, 96, ['ai', 'ce', 'cs', 'cse', 'ds'], no, no).
university_requirements(ohio_state_university, phd, cs, 9.31, 329, 97, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee'], no, no).
university_requirements(ohio_state_university, ms, cybersecurity, 8.52, 322, 102, ['ai', 'ce', 'cs', 'cse', 'ds'], no, no).
university_requirements(ohio_state_university, ms, hci, 9.56, 321, 109, ['ai', 'ce', 'cs', 'cse', 'ds', 'it', 'statistics'], yes, no).
university_requirements(ohio_state_university, phd, hpc, 8.26, 322, 104, ['ee', 'eee'], yes, yes).
university_requirements(university_of_washington, ms, cs, 8.85, 330, 107, ['ai', 'ce', 'cs', 'cse', 'ds', 'it', 'statistics'], no, yes).
university_requirements(university_of_washington, phd, cs, 8.51, not_required, 115, ['ai', 'ce', 'cs', 'cse', 'ds', 'math'], no, yes).
university_requirements(university_of_washington, phd, ds, 8.07, 319, 98, ['ds', 'ee', 'eee', 'it', 'statistics'], yes, no).
university_requirements(university_of_washington, ms, cybersecurity, 8.25, 325, 106, ['ai', 'ce', 'cs', 'cse', 'ds', 'statistics'], no, no).
university_requirements(university_of_washington, phd, cybersecurity, 8.88, not_required, 103, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee'], no, no).
university_requirements(university_of_washington, ms, cs, 8.26, 316, 113, ['math'], yes, yes).
university_requirements(university_of_georgia, ms, cs, 9.25, 327, 99, ['it'], no, yes).
university_requirements(university_of_georgia, phd, cs, 9.43, not_required, 114, ['ai', 'ce', 'cs', 'cse', 'ds'], no, no).
university_requirements(university_of_georgia, phd, ds, 9.16, not_required, 113, ['ee', 'eee', 'math'], yes, yes).
university_requirements(purdue_university, ms, cs, 8.74, 324, 96, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee'], no, yes).
university_requirements(purdue_university, phd, cs, 9.82, not_required, 104, ['ai', 'ce', 'cs', 'cse', 'ds', 'it', 'statistics'], no, no).
university_requirements(purdue_university, ms, cs, 8.91, 317, 105, ['math'], no, yes).
university_requirements(purdue_university, ms, hpc, 8.74, 317, 100, ['ai', 'ce', 'cs', 'cse', 'ds'], no, no).
university_requirements(university_of_notre_dame, ms, cs, 9.67, 328, 106, ['it'], no, yes).
university_requirements(university_of_notre_dame, phd, cs, 9.82, not_required, 110, ['ee', 'eee', 'it', 'math'], yes, yes).
university_requirements(university_of_notre_dame, ms, hci, 8.74, 328, 102, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee', 'statistics'], yes, no).
university_requirements(university_of_notre_dame, ms, hci, 8.32, 321, 98, ['ai', 'ce', 'cs', 'cse', 'ds', 'it', 'statistics'], no, no).
university_requirements(university_of_notre_dame, phd, information_technology, 8.49, not_required, 98, ['ee', 'eee'], no, no).
university_requirements(university_of_notre_dame, ms, hci, 8.91, 315, 112, ['ai', 'ce', 'cs', 'cse', 'ds', 'it', 'math'], yes, yes).
university_requirements(university_of_rochester, ms, cs, 8.57, 320, 101, ['it'], no, no).
university_requirements(university_of_rochester, phd, cs, 9.58, 323, 111, ['ds', 'ee', 'eee', 'it', 'statistics'], no, yes).
university_requirements(university_of_rochester, phd, ai, 9.33, not_required, 97, ['ds', 'statistics'], no, no).
university_requirements(university_of_rochester, ms, hpc, 9.8, 318, 110, ['ai', 'ce', 'cs', 'cse', 'ds', 'statistics'], yes, yes).
university_requirements(emory_university, ms, cs, 9.21, 327, 106, ['ee', 'eee'], no, no).
university_requirements(emory_university, phd, cs, 8.6, not_required, 95, ['ds', 'it', 'statistics'], no, yes).
university_requirements(emory_university, phd, ai, 9.5, not_required, 109, ['ds', 'it', 'math', 'statistics'], yes, no).
university_requirements(emory_university, ms, ds, 9.34, 329, 110, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee', 'it'], no, no).
university_requirements(emory_university, ms, hpc, 9.71, 317, 97, ['ee', 'eee', 'it'], yes, yes).
university_requirements(emory_university, phd, cs, 8.02, not_required, 108, ['ai', 'ce', 'cs', 'cse', 'ds', 'math', 'statistics'], yes, no).
university_requirements(georgetown_university, ms, cs, 9.58, 329, 111, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee', 'math'], yes, yes).
university_requirements(georgetown_university, phd, cs, 8.89, 317, 96, ['ds', 'ee', 'eee', 'statistics'], no, yes).
university_requirements(georgetown_university, ms, cybersecurity, 9.6, 317, 102, ['ee', 'eee', 'math'], yes, no).
university_requirements(university_of_southern_california_usc, ms, cs, 9.13, 320, 96, ['ai', 'ce', 'cs', 'cse', 'ds', 'it', 'statistics'], yes, no).
university_requirements(university_of_southern_california_usc, phd, cs, 9.97, 324, 96, ['math'], no, no).
university_requirements(university_of_southern_california_usc, phd, hpc, 9.38, not_required, 109, ['ee', 'eee', 'math'], yes, yes).
university_requirements(university_of_southern_california_usc, phd, ai, 8.06, not_required, 103, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee'], yes, yes).
university_requirements(new_york_university_nyu, ms, cs, 9.09, 323, 105, ['ee', 'eee'], yes, no).
university_requirements(new_york_university_nyu, phd, cs, 9.41, not_required, 114, ['ai', 'ce', 'cs', 'cse', 'ds', 'it', 'statistics'], yes, no).
university_requirements(new_york_university_nyu, ms, ds, 9.27, 320, 98, ['math'], no, yes).
university_requirements(new_york_university_nyu, ms, information_technology, 9.36, 322, 102, ['ds', 'ee', 'eee', 'it', 'statistics'], no, no).
university_requirements(new_york_university_nyu, phd, hci, 9.98, 325, 96, ['ee', 'eee', 'math'], no, no).
university_requirements(binghamton_university_suny, ms, cs, 8.67, 320, 111, ['ds', 'ee', 'eee', 'statistics'], yes, no).
university_requirements(binghamton_university_suny, phd, cs, 8.88, 325, 95, ['ds', 'statistics'], yes, yes).
university_requirements(binghamton_university_suny, phd, ds, 9.44, not_required, 99, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee', 'statistics'], no, yes).
university_requirements(stony_brook_university_suny, ms, cs, 8.77, 324, 108, ['ai', 'ce', 'cs', 'cse', 'ds', 'math'], yes, yes).
university_requirements(stony_brook_university_suny, phd, cs, 9.95, 315, 98, ['ai', 'ce', 'cs', 'cse', 'ds'], yes, yes).
university_requirements(stony_brook_university_suny, ms, ds, 9.98, 316, 100, ['ds', 'math', 'statistics'], no, no).
university_requirements(stony_brook_university_suny, phd, ds, 9.52, 325, 96, ['ds', 'ee', 'eee', 'math', 'statistics'], no, no).
university_requirements(university_at_buffalo_suny, ms, cs, 8.57, 329, 101, ['ds', 'it', 'statistics'], yes, yes).
university_requirements(university_at_buffalo_suny, phd, cs, 9.68, 320, 96, ['ee', 'eee'], yes, yes).
university_requirements(university_at_buffalo_suny, phd, hci, 9.95, 327, 111, ['ds', 'ee', 'eee', 'statistics'], yes, no).
university_requirements(university_at_buffalo_suny, ms, cs, 8.92, 322, 107, ['ee', 'eee'], yes, no).
university_requirements(university_at_albany_suny, ms, cs, 9.57, 319, 108, ['ee', 'eee', 'it'], no, yes).
university_requirements(university_at_albany_suny, phd, cs, 8.64, not_required, 103, ['ee', 'eee'], no, yes).
university_requirements(university_at_albany_suny, phd, information_technology, 9.12, not_required, 113, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee'], no, yes).
university_requirements(university_at_albany_suny, phd, cybersecurity, 8.31, 330, 98, ['ee', 'eee', 'math'], no, no).
university_requirements(suny_college_of_environmental_science_and_forestry_suny_esf, ms, cs, 9.92, 320, 109, ['ai', 'ce', 'cs', 'cse', 'ds', 'math', 'statistics'], yes, yes).
university_requirements(suny_college_of_environmental_science_and_forestry_suny_esf, phd, cs, 8.12, 328, 95, ['ai', 'ce', 'cs', 'cse', 'ds', 'it'], yes, no).
university_requirements(suny_college_of_environmental_science_and_forestry_suny_esf, ms, ai, 9.77, 330, 108, ['math'], no, no).
university_requirements(university_of_connecticut, ms, cs, 8.55, 328, 110, ['ds', 'it', 'math', 'statistics'], yes, no).
university_requirements(university_of_connecticut, phd, cs, 8.67, not_required, 110, ['ds', 'ee', 'eee', 'math', 'statistics'], yes, no).
university_requirements(university_of_connecticut, phd, ds, 9.26, 329, 108, ['ai', 'ce', 'cs', 'cse', 'ds', 'statistics'], no, yes).
university_requirements(university_of_connecticut, phd, hpc, 9.04, 330, 96, ['ds', 'statistics'], yes, no).
university_requirements(university_of_connecticut, phd, ds, 8.84, 325, 103, ['ai', 'ce', 'cs', 'cse', 'ds', 'math'], yes, no).
university_requirements(university_of_pittsburgh, ms, cs, 9.46, 320, 104, ['ee', 'eee'], yes, no).
university_requirements(university_of_pittsburgh, phd, cs, 8.29, not_required, 99, ['ds', 'statistics'], yes, no).
university_requirements(university_of_pittsburgh, phd, hci, 9.44, not_required, 106, ['it', 'math'], no, no).
university_requirements(rutgers_university_new_brunswick, ms, cs, 9.77, 328, 110, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee', 'it'], no, no).
university_requirements(rutgers_university_new_brunswick, phd, cs, 8.89, not_required, 96, ['ai', 'ce', 'cs', 'cse', 'ds', 'it', 'math'], no, no).
university_requirements(rutgers_university_new_brunswick, phd, cybersecurity, 9.42, not_required, 105, ['ai', 'ce', 'cs', 'cse', 'ds', 'it'], yes, yes).
university_requirements(indiana_university_bloomington, ms, cs, 9.6, 330, 98, ['it'], no, yes).
university_requirements(indiana_university_bloomington, phd, cs, 9.66, not_required, 101, ['ds', 'it', 'statistics'], no, yes).
university_requirements(indiana_university_bloomington, phd, ds, 8.29, not_required, 99, ['math'], yes, no).
university_requirements(michigan_state_university, ms, cs, 8.57, 321, 111, ['ee', 'eee'], yes, yes).
university_requirements(michigan_state_university, phd, cs, 9.26, not_required, 104, ['ds', 'it', 'math', 'statistics'], yes, yes).
university_requirements(michigan_state_university, ms, hpc, 9.35, 329, 105, ['ai', 'ce', 'cs', 'cse', 'ds', 'it', 'math'], yes, yes).
university_requirements(michigan_state_university, phd, hci, 8.23, 323, 106, ['ee', 'eee', 'math'], no, no).
university_requirements(michigan_state_university, phd, ds, 8.28, 318, 101, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee', 'it'], no, no).
university_requirements(arizona_state_university, ms, cs, 9.68, 318, 114, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee', 'math'], yes, yes).
university_requirements(arizona_state_university, phd, cs, 9.99, not_required, 106, ['ee', 'eee'], yes, no).
university_requirements(arizona_state_university, ms, ai, 9.36, 322, 105, ['ds', 'statistics'], yes, no).
university_requirements(arizona_state_university, ms, ai, 9.45, 317, 101, ['math'], no, no).
university_requirements(university_of_colorado_boulder, ms, cs, 8.32, 325, 115, ['ds', 'statistics'], no, yes).
university_requirements(university_of_colorado_boulder, phd, cs, 8.89, 329, 114, ['ee', 'eee', 'it'], no, no).
university_requirements(university_of_colorado_boulder, phd, ai, 8.5, 325, 110, ['ai', 'ce', 'cs', 'cse', 'ds', 'statistics'], no, no).
university_requirements(brown_university, ms, cs, 8.29, 318, 114, ['ee', 'eee'], no, yes).
university_requirements(brown_university, phd, cs, 8.28, 308, 110, ['ds', 'it', 'math', 'statistics'], no, no).
university_requirements(brown_university, ms, ds, 9.9, 314, 106, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee'], no, no).
university_requirements(dartmouth_college, ms, cs, 9.69, 314, 98, ['ds', 'it', 'statistics'], no, yes).
university_requirements(dartmouth_college, phd, cs, 9.45, not_required, 107, ['ai', 'ce', 'cs', 'cse', 'ds', 'statistics'], yes, yes).
university_requirements(dartmouth_college, ms, ds, 9.01, 317, 114, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee'], yes, yes).
university_requirements(northeastern_university, ms, cs, 8.36, 314, 98, ['ai', 'ce', 'cs', 'cse', 'ds', 'statistics'], yes, no).
university_requirements(northeastern_university, phd, cs, 9.09, not_required, 100, ['ee', 'eee'], no, yes).
university_requirements(northeastern_university, ms, cs, 8.47, 313, 108, ['ai', 'ce', 'cs', 'cse', 'ds', 'math', 'statistics'], yes, no).
university_requirements(northeastern_university, phd, cs, 8.09, not_required, 96, ['ai', 'ce', 'cs', 'cse', 'ds', 'math', 'statistics'], yes, no).
university_requirements(northeastern_university, phd, ai, 9.54, not_required, 98, ['ai', 'ce', 'cs', 'cse', 'ds', 'it', 'math'], no, no).
university_requirements(northeastern_university, ms, ai, 9.79, 311, 108, ['it'], yes, yes).
university_requirements(boston_university, ms, cs, 9.17, 312, 115, ['ds', 'ee', 'eee', 'it', 'statistics'], no, no).
university_requirements(boston_university, phd, cs, 8.26, 306, 105, ['ee', 'eee', 'it', 'math'], yes, yes).
university_requirements(boston_university, ms, hpc, 9.02, 315, 112, ['ee', 'eee', 'it', 'math'], yes, yes).
university_requirements(boston_university, phd, information_technology, 9.85, not_required, 102, ['ds', 'ee', 'eee', 'math', 'statistics'], yes, no).
university_requirements(georgia_institute_of_technology_georgia_tech, ms, cs, 8.22, 312, 109, ['it'], no, no).
university_requirements(georgia_institute_of_technology_georgia_tech, phd, cs, 8.9, not_required, 101, ['ee', 'eee'], no, yes).
university_requirements(georgia_institute_of_technology_georgia_tech, ms, hpc, 8.82, 306, 97, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee', 'statistics'], yes, no).
university_requirements(georgia_institute_of_technology_georgia_tech, ms, cybersecurity, 9.9, 317, 111, ['ai', 'ce', 'cs', 'cse', 'ds', 'statistics'], no, yes).
university_requirements(georgia_institute_of_technology_georgia_tech, phd, ai, 9.46, 309, 95, ['ai', 'ce', 'cs', 'cse', 'ds'], no, no).
university_requirements(georgia_institute_of_technology_georgia_tech, ms, information_technology, 8.73, 309, 112, ['math'], yes, no).


university_requirements(texas_aandm_university, ms, cs, 8.11, 315, 95, ['ee', 'eee'], yes, no).
university_requirements(texas_aandm_university, phd, cs, 8.21, 316, 103, ['ai', 'ce', 'cs', 'cse', 'ds', 'statistics'], no, yes).
university_requirements(texas_aandm_university, phd, cs, 9.11, 318, 109, ['ds', 'ee', 'eee', 'statistics'], no, no).
university_requirements(texas_aandm_university, ms, hci, 8.29, 314, 98, ['ai', 'ce', 'cs', 'cse', 'ds', 'it'], no, yes).
university_requirements(university_of_arizona, ms, cs, 9.74, 319, 110, ['ds', 'statistics'], no, yes).
university_requirements(university_of_arizona, phd, cs, 9.86, 320, 112, ['ds', 'ee', 'eee', 'it', 'statistics'], yes, yes).
university_requirements(university_of_arizona, ms, information_technology, 8.55, 312, 97, ['ai', 'ce', 'cs', 'cse', 'ds', 'math'], no, yes).
university_requirements(university_of_iowa, ms, cs, 8.27, 312, 108, ['ds', 'statistics'], yes, yes).
university_requirements(university_of_iowa, phd, cs, 9.55, 312, 100, ['ai', 'ce', 'cs', 'cse', 'ds', 'statistics'], no, yes).
university_requirements(university_of_iowa, phd, ai, 8.03, 315, 115, ['ee', 'eee'], yes, yes).
university_requirements(university_of_kansas, ms, cs, 9.8, 311, 115, ['ai', 'ce', 'cs', 'cse', 'ds', 'statistics'], no, yes).
university_requirements(university_of_kansas, phd, cs, 9.97, not_required, 112, ['ds', 'ee', 'eee', 'it', 'statistics'], yes, no).
university_requirements(university_of_kansas, ms, information_technology, 9.34, 311, 103, ['ds', 'it', 'statistics'], yes, no).
university_requirements(university_of_kansas, phd, information_technology, 8.81, not_required, 97, ['ai', 'ce', 'cs', 'cse', 'ds'], no, yes).
university_requirements(university_of_nebraska-lincoln, ms, cs, 9.57, 320, 96, ['ai', 'ce', 'cs', 'cse', 'ds', 'math', 'statistics'], no, yes).
university_requirements(university_of_nebraska-lincoln, phd, cs, 9.71, 309, 100, ['math'], no, no).
university_requirements(university_of_nebraska-lincoln, ms, cs, 9.55, 312, 103, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee'], yes, no).
university_requirements(university_of_nebraska-lincoln, phd, ds, 9.79, not_required, 110, ['ds', 'statistics'], no, yes).
university_requirements(university_of_nebraska-lincoln, ms, hpc, 9.51, 306, 97, ['it'], no, yes).
university_requirements(university_of_nebraska-lincoln, ms, ds, 8.6, 318, 103, ['ee', 'eee'], yes, yes).
university_requirements(university_of_oklahoma, ms, cs, 9.55, 314, 101, ['ai', 'ce', 'cs', 'cse', 'ds', 'it', 'math'], no, yes).
university_requirements(university_of_oklahoma, phd, cs, 8.2, not_required, 111, ['ai', 'ce', 'cs', 'cse', 'ds', 'it', 'statistics'], no, no).
university_requirements(university_of_oklahoma, ms, hpc, 8.31, 316, 100, ['ee', 'eee', 'it', 'math'], yes, yes).
university_requirements(university_of_oklahoma, phd, information_technology, 9.62, 310, 115, ['ds', 'it', 'statistics'], yes, no).
university_requirements(university_of_oklahoma, ms, cs, 9.38, 316, 113, ['ai', 'ce', 'cs', 'cse', 'ds', 'statistics'], yes, no).
university_requirements(university_of_oklahoma, ms, hpc, 9.89, 314, 99, ['ds', 'ee', 'eee', 'statistics'], yes, no).
university_requirements(university_of_missouri, ms, cs, 9.95, 307, 101, ['ds', 'it', 'math', 'statistics'], yes, no).
university_requirements(university_of_missouri, phd, cs, 8.02, not_required, 104, ['ee', 'eee', 'math'], no, yes).
university_requirements(university_of_missouri, phd, hci, 8.83, 308, 115, ['ds', 'math', 'statistics'], no, no).
university_requirements(university_of_missouri, phd, ds, 8.31, not_required, 100, ['it', 'math'], no, no).
university_requirements(university_of_missouri, ms, hci, 8.48, 320, 110, ['ai', 'ce', 'cs', 'cse', 'ds', 'it'], no, no).
university_requirements(university_of_missouri, phd, hpc, 8.34, 317, 96, ['ai', 'ce', 'cs', 'cse', 'ds', 'it', 'statistics'], no, yes).
university_requirements(university_of_delaware, ms, cs, 8.15, 313, 104, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee', 'math'], no, no).
university_requirements(university_of_delaware, phd, cs, 8.25, not_required, 114, ['ee', 'eee', 'it'], no, no).
university_requirements(university_of_delaware, phd, information_technology, 9.75, 311, 114, ['ds', 'it', 'statistics'], yes, no).
university_requirements(university_of_delaware, ms, hpc, 8.1, 317, 115, ['ai', 'ce', 'cs', 'cse', 'ds', 'statistics'], yes, no).
university_requirements(university_of_delaware, phd, ds, 9.17, 306, 112, ['it', 'math'], yes, no).
university_requirements(university_of_delaware, ms, ai, 9.89, 310, 95, ['ds', 'it', 'statistics'], no, yes).

university_requirements(university_of_kentucky, ms, cs, 9.02, 319, 96, ['ai', 'ce', 'cs', 'cse', 'ds', 'it', 'statistics'], no, no).
university_requirements(university_of_kentucky, phd, cs, 9.5, 312, 95, ['ds', 'ee', 'eee', 'math', 'statistics'], yes, no).
university_requirements(university_of_kentucky, phd, cs, 8.17, not_required, 114, ['ai', 'ce', 'cs', 'cse', 'ds'], no, no).
university_requirements(university_of_massachusetts_amherst, ms, cs, 9.8, 309, 110, ['it'], yes, yes).
university_requirements(university_of_massachusetts_amherst, phd, cs, 8.85, 306, 98, ['ds', 'it', 'statistics'], yes, no).
university_requirements(university_of_massachusetts_amherst, ms, hpc, 9.17, 309, 104, ['ds', 'statistics'], no, yes).
university_requirements(university_of_massachusetts_amherst, phd, hci, 9.48, not_required, 109, ['ee', 'eee', 'math'], no, no).
university_requirements(university_of_massachusetts_amherst, phd, cs, 9.65, 307, 96, ['it'], yes, no).
university_requirements(university_of_massachusetts_amherst, ms, cybersecurity, 8.63, 319, 114, ['ee', 'eee', 'math'], no, no).
university_requirements(university_of_central_florida, ms, cs, 9.94, 306, 99, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee', 'statistics'], yes, yes).
university_requirements(university_of_central_florida, phd, cs, 8.83, 305, 108, ['ee', 'eee', 'it'], no, no).
university_requirements(university_of_central_florida, phd, information_technology, 9.97, 319, 98, ['ds', 'it', 'math', 'statistics'], no, yes).
university_requirements(university_of_central_florida, phd, hpc, 9.84, not_required, 101, ['ai', 'ce', 'cs', 'cse', 'ds', 'it', 'statistics'], no, no).
university_requirements(university_of_central_florida, phd, ai, 8.13, not_required, 113, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee', 'statistics'], no, no).
university_requirements(university_of_central_florida, ms, cybersecurity, 8.15, 310, 102, ['ds', 'it', 'statistics'], yes, no).
university_requirements(florida_state_university, ms, cs, 8.41, 309, 96, ['it', 'math'], yes, no).
university_requirements(florida_state_university, phd, cs, 9.7, not_required, 105, ['ai', 'ce', 'cs', 'cse', 'ds'], no, yes).
university_requirements(florida_state_university, phd, information_technology, 9.72, not_required, 108, ['ai', 'ce', 'cs', 'cse', 'ds', 'it'], yes, yes).
university_requirements(florida_state_university, ms, hci, 9.36, 318, 106, ['it'], no, no).
university_requirements(colorado_state_university, ms, cs, 8.35, 314, 110, ['ai', 'ce', 'cs', 'cse', 'ds', 'it', 'math'], yes, no).
university_requirements(colorado_state_university, phd, cs, 9.28, not_required, 103, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee'], no, no).
university_requirements(colorado_state_university, ms, information_technology, 8.21, 314, 103, ['ai', 'ce', 'cs', 'cse', 'ds', 'it'], yes, yes).
university_requirements(colorado_state_university, ms, hci, 8.62, 319, 98, ['ai', 'ce', 'cs', 'cse', 'ds', 'it'], yes, yes).
university_requirements(university_of_houston, ms, cs, 9.58, 314, 112, ['ai', 'ce', 'cs', 'cse', 'ds'], no, yes).
university_requirements(university_of_houston, phd, cs, 9.95, not_required, 107, ['ee', 'eee'], no, no).
university_requirements(university_of_houston, ms, cybersecurity, 8.48, 309, 99, ['it', 'math'], no, yes).
university_requirements(university_of_houston, phd, information_technology, 9.49, 311, 96, ['ai', 'ce', 'cs', 'cse', 'ds', 'it', 'math'], yes, yes).
university_requirements(university_of_south_florida, ms, cs, 8.15, 314, 112, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee'], yes, yes).
university_requirements(university_of_south_florida, phd, cs, 8.29, not_required, 96, ['ds', 'ee', 'eee', 'statistics'], no, yes).
university_requirements(university_of_south_florida, ms, ds, 9.09, 315, 105, ['ee', 'eee', 'it'], no, yes).
university_requirements(university_of_south_florida, ms, ai, 8.16, 318, 98, ['ds', 'ee', 'eee', 'it', 'statistics'], no, no).
university_requirements(university_of_new_mexico, ms, cs, 8.49, 308, 100, ['ee', 'eee', 'it', 'math'], yes, no).
university_requirements(university_of_new_mexico, phd, cs, 9.75, not_required, 114, ['ds', 'it', 'math', 'statistics'], no, no).
university_requirements(university_of_new_mexico, ms, information_technology, 8.95, 320, 98, ['ds', 'it', 'math', 'statistics'], yes, no).
university_requirements(university_of_new_mexico, phd, hpc, 8.64, not_required, 114, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee'], yes, yes).
university_requirements(university_of_new_mexico, phd, cybersecurity, 9.94, 308, 108, ['ai', 'ce', 'cs', 'cse', 'ds', 'math'], yes, no).
university_requirements(university_of_new_mexico, phd, hci, 9.23, 305, 96, ['ds', 'ee', 'eee', 'statistics'], no, no).
university_requirements(oregon_state_university, ms, cs, 9.22, 320, 105, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee', 'math'], no, no).
university_requirements(oregon_state_university, phd, cs, 8.47, not_required, 102, ['ds', 'statistics'], yes, no).
university_requirements(oregon_state_university, ms, hci, 9.27, 318, 112, ['it', 'math'], no, yes).
university_requirements(oregon_state_university, ms, ai, 8.59, 318, 97, ['math'], no, no).
university_requirements(oregon_state_university, ms, hpc, 8.41, 309, 115, ['ai', 'ce', 'cs', 'cse', 'ds', 'it'], no, yes).
university_requirements(washington_state_university, ms, cs, 9.67, 308, 100, ['ee', 'eee', 'math'], no, no).
university_requirements(washington_state_university, phd, cs, 8.16, 313, 104, ['ai', 'ce', 'cs', 'cse', 'ds', 'math'], yes, yes).
university_requirements(washington_state_university, ms, cs, 9.26, 317, 111, ['ai', 'ce', 'cs', 'cse', 'ds', 'it'], no, no).
university_requirements(washington_state_university, phd, information_technology, 8.6, not_required, 107, ['it'], no, yes).
university_requirements(washington_state_university, ms, cs, 8.3, 314, 112, ['ee', 'eee', 'it'], yes, yes).
university_requirements(university_of_oregon, ms, cs, 8.57, 306, 96, ['ds', 'math', 'statistics'], no, yes).
university_requirements(university_of_oregon, phd, cs, 8.7, not_required, 109, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee', 'statistics'], yes, no).
university_requirements(university_of_oregon, ms, cybersecurity, 9.06, 314, 112, ['it'], no, yes).
university_requirements(university_of_oregon, ms, hci, 9.29, 319, 103, ['ai', 'ce', 'cs', 'cse', 'ds', 'math'], yes, no).
university_requirements(university_of_oregon, phd, hpc, 8.1, not_required, 97, ['ee', 'eee', 'it', 'math'], yes, yes).
university_requirements(university_of_utah, ms, cs, 8.18, 308, 113, ['ds', 'math', 'statistics'], yes, no).
university_requirements(university_of_utah, phd, cs, 9.65, not_required, 115, ['ds', 'statistics'], no, yes).
university_requirements(university_of_utah, phd, ds, 8.3, not_required, 107, ['it'], yes, yes).
university_requirements(university_of_utah, phd, hci, 9.69, not_required, 105, ['ds', 'ee', 'eee', 'it', 'statistics'], yes, yes).

university_requirements(san_diego_state_university_sdsu, ms, cs, 8.29, 313, 97, ['math'], no, no).
university_requirements(san_diego_state_university_sdsu, phd, cs, 8.79, 306, 108, ['ds', 'math', 'statistics'], no, no).
university_requirements(san_diego_state_university_sdsu, ms, cybersecurity, 9.32, 315, 111, ['it'], no, yes).
university_requirements(san_diego_state_university_sdsu, ms, hci, 9.55, 316, 97, ['ds', 'it', 'math', 'statistics'], no, yes).
university_requirements(san_diego_state_university_sdsu, ms, hpc, 9.63, 306, 101, ['ai', 'ce', 'cs', 'cse', 'ds'], no, yes).
university_requirements(san_diego_state_university_sdsu, ms, information_technology, 8.19, 306, 111, ['ai', 'ce', 'cs', 'cse', 'ds', 'it'], no, no).
university_requirements(san_jose_state_university_sjsu, ms, cs, 8.32, 306, 112, ['it'], yes, yes).
university_requirements(san_jose_state_university_sjsu, phd, cs, 9.91, 310, 109, ['ee', 'eee', 'math'], yes, no).
university_requirements(san_jose_state_university_sjsu, ms, ai, 8.96, 311, 101, ['ds', 'ee', 'eee', 'statistics'], no, no).
university_requirements(san_jose_state_university_sjsu, ms, information_technology, 8.79, 320, 107, ['ee', 'eee'], yes, yes).
university_requirements(san_jose_state_university_sjsu, ms, cs, 9.13, 315, 95, ['ee', 'eee'], yes, no).
university_requirements(clemson_university, ms, cs, 9.87, 305, 99, ['math'], no, no).
university_requirements(clemson_university, phd, cs, 9.13, 307, 107, ['math'], yes, no).
university_requirements(clemson_university, phd, ds, 8.79, not_required, 104, ['ds', 'statistics'], yes, no).
university_requirements(clemson_university, ms, hci, 8.99, 313, 106, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee', 'math'], no, yes).
university_requirements(clemson_university, phd, cs, 9.62, 313, 98, ['ds', 'ee', 'eee', 'statistics'], no, yes).
university_requirements(auburn_university, ms, cs, 8.16, 315, 109, ['ai', 'ce', 'cs', 'cse', 'ds'], yes, no).
university_requirements(auburn_university, phd, cs, 9.74, 308, 104, ['ai', 'ce', 'cs', 'cse', 'ds', 'math'], yes, yes).
university_requirements(auburn_university, phd, hpc, 9.92, not_required, 111, ['ds', 'ee', 'eee', 'it', 'statistics'], yes, no).
university_requirements(mississippi_state_university, ms, cs, 8.98, 306, 114, ['ds', 'statistics'], no, yes).
university_requirements(mississippi_state_university, phd, cs, 8.7, not_required, 98, ['ai', 'ce', 'cs', 'cse', 'ds', 'it', 'math'], yes, no).
university_requirements(mississippi_state_university, phd, hci, 8.07, 319, 113, ['math'], no, yes).
university_requirements(kansas_state_university, ms, cs, 9.52, 310, 104, ['ai', 'ce', 'cs', 'cse', 'ds', 'math'], yes, yes).
university_requirements(kansas_state_university, phd, cs, 9.45, not_required, 96, ['ee', 'eee', 'math'], no, yes).
university_requirements(kansas_state_university, ms, hci, 8.58, 313, 95, ['ds', 'math', 'statistics'], no, yes).
university_requirements(kansas_state_university, ms, ds, 8.97, 311, 106, ['it'], no, yes).
university_requirements(kansas_state_university, ms, cybersecurity, 9.92, 312, 106, ['it'], no, no).
university_requirements(university_of_arkansas, ms, cs, 8.31, 316, 115, ['ai', 'ce', 'cs', 'cse', 'ds', 'it', 'math'], no, yes).
university_requirements(university_of_arkansas, phd, cs, 8.81, not_required, 110, ['it'], no, no).
university_requirements(university_of_arkansas, ms, ai, 9.83, 305, 104, ['ai', 'ce', 'cs', 'cse', 'ds', 'ee', 'eee', 'it'], yes, no).
university_requirements(university_of_arkansas, ms, hpc, 9.91, 305, 111, ['math'], no, no).
university_requirements(university_of_arkansas, phd, ds, 9.69, not_required, 114, ['ds', 'statistics'], no, yes).
university_requirements(university_of_arkansas, ms, ds, 8.57, 312, 106, ['it'], no, no).
university_requirements(university_of_mississippi, ms, cs, 8.37, 310, 101, ['ai', 'ce', 'cs', 'cse', 'ds', 'it', 'math'], no, no).
university_requirements(university_of_mississippi, phd, cs, 8.55, not_required, 105, ['ai', 'ce', 'cs', 'cse', 'ds', 'it'], no, yes).
university_requirements(university_of_mississippi, ms, hci, 9.48, 305, 115, ['ds', 'it', 'math', 'statistics'], no, yes).
university_requirements(university_of_mississippi, phd, information_technology, 9.96, not_required, 102, ['ds', 'statistics'], no, yes).
university_requirements(university_of_mississippi, ms, information_technology, 9.48, 300, 104, ['ds', 'ee', 'eee', 'math', 'statistics'], no, no).




% University categories
% University categories based on the average required GPA

ambitious_university(arizona_state_university).
ambitious_university(auburn_university).
ambitious_university(clemson_university).
ambitious_university(dartmouth_college).
ambitious_university(duke_university).
ambitious_university(florida_state_university).
ambitious_university(georgetown_university).
ambitious_university(kansas_state_university).
ambitious_university(new_york_university_nyu).
ambitious_university(rice_university).
ambitious_university(rutgers_university_new_brunswick).
ambitious_university(stony_brook_university_suny).
ambitious_university(suny_college_of_environmental_science_and_forestry_suny_esf).
ambitious_university(university_at_buffalo_suny).
ambitious_university(university_of_arizona).
ambitious_university(university_of_california).
ambitious_university(university_of_california).
ambitious_university(university_of_california).
ambitious_university(university_of_georgia).
ambitious_university(university_of_houston).
ambitious_university(university_of_illinois_urbana_champaign).
ambitious_university(university_of_kansas).
ambitious_university(university_of_massachusetts_amherst).
ambitious_university(university_of_nebraska_lincoln).
ambitious_university(university_of_rochester).

target_university(binghamton_university_suny).
target_university(boston_university).
target_university(brown_university).
target_university(columbia_university).
target_university(cornell_university).
target_university(emory_university).
target_university(georgia_institute_of_technology_georgia_tech).
target_university(harvard_university).
target_university(indiana_university_bloomington).
target_university(johns_hopkins_university).
target_university(massachusetts_institute_of_technology_mit).
target_university(northeastern_university).
target_university(northwestern_university).
target_university(ohio_state_university).
target_university(princeton_university).
target_university(purdue_university).
target_university(san_diego_state_university_sdsu).
target_university(san_jose_state_university_sjsu).
target_university(stanford_university).
target_university(university_at_albany_suny).
target_university(university_of_arkansas).
target_university(university_of_california).
target_university(university_of_california).
target_university(university_of_california).
target_university(university_of_californiaz).
target_university(university_of_central_florida).
target_university(university_of_chicago).
target_university(university_of_connecticut).
target_university(university_of_delaware).
target_university(university_of_florida).
target_university(university_of_kentucky).
target_university(university_of_maryland).
target_university(university_of_minnesota).
target_university(university_of_mississippi).
target_university(university_of_new_mexico).
target_university(university_of_north_carolina_at_chapel_hill).
target_university(university_of_notre_dame).
target_university(university_of_oklahoma).
target_university(university_of_pittsburgh).
target_university(university_of_southern_california_usc).
target_university(university_of_tennessee).
target_university(university_of_texas_at_austin).
target_university(university_of_utah).
target_university(university_of_virginia).
target_university(university_of_wisconsin_madison).
target_university(vanderbilt_university).
target_university(yale_university).

safe_university(california_institute_of_technology_caltech).
safe_university(colorado_state_university).
safe_university(michigan_state_university).
safe_university(mississippi_state_university).
safe_university(oregon_state_university).
safe_university(pennsylvania_state_university).
safe_university(texas_aandm_university).
safe_university(university_of_california).
safe_university(university_of_colorado_boulder).
safe_university(university_of_iowa).
safe_university(university_of_michigan).
safe_university(university_of_missouri).
safe_university(university_of_nevada).
safe_university(university_of_oregon).
safe_university(university_of_pennsylvania).
safe_university(university_of_south_florida).
safe_university(university_of_washington).
safe_university(washington_state_university).



% University Details (visual/contact info)
university_details(stanford, 
    "https://www.stanford.edu",
    "https://www.google.com/url?sa=i&url=https%3A%2F%2Famgenscholars.com%2Funiversity%2Fstanford-university%2F&psig=AOvVaw0D-Emz9uHHfvLwGWNDBIEd&ust=1745781361826000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCICqqMi09owDFQAAAAAdAAAAABAE").

university_details(mit,
    "https://web.mit.edu",
     "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.frontiersin.org%2Fnews%2F2019%2F04%2F02%2Fmit-and-frontiers-form-open-access-publishing-agreement&psig=AOvVaw12AGum1jhyeWlbRTwwjUC7&ust=1745781468078000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCLCA7vm09owDFQAAAAAdAAAAABAp").

university_details(ucb,
    "https://www.berkeley.edu",
     "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.frontiersin.org%2Fnews%2F2019%2F04%2F02%2Fmit-and-frontiers-form-open-access-publishing-agreement&psig=AOvVaw12AGum1jhyeWlbRTwwjUC7&ust=1745781468078000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCLCA7vm09owDFQAAAAAdAAAAABAp").

university_details(umich,
    "https://umich.edu",
   "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.frontiersin.org%2Fnews%2F2019%2F04%2F02%2Fmit-and-frontiers-form-open-access-publishing-agreement&psig=AOvVaw12AGum1jhyeWlbRTwwjUC7&ust=1745781468078000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCLCA7vm09owDFQAAAAAdAAAAABAp").

university_details(ncsu,
    "https://www.ncsu.edu",
     "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.frontiersin.org%2Fnews%2F2019%2F04%2F02%2Fmit-and-frontiers-form-open-access-publishing-agreement&psig=AOvVaw12AGum1jhyeWlbRTwwjUC7&ust=1745781468078000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCLCA7vm09owDFQAAAAAdAAAAABAp").