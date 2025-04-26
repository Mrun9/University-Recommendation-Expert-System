:- module(knowledge_base, [
    university_requirements/8,
    safe_university/1,
    target_university/1,
    ambitious_university/1
]).

% University database
university_requirements(stanford, cs, 9.0, 325, 105, [cse, ce, it, ds, ai], yes, yes).
university_requirements(mit, cs, 9.0, 330, 105, [cse, ce, it, ds, ai], yes, yes).
university_requirements(ucb, cs, 8.8, 320, 100, [cse, ce, it, ds, ai], yes, no).
university_requirements(umich, cs, 8.5, 315, 100, [cse, ce, it, ds, ai], no, no).
university_requirements(ncsu, cs, 8.0, 310, 95, [cse, ce, it, ds, ai], no, no).

% University categories
safe_university(ncsu).
safe_university(umich).
target_university(ucb).
ambitious_university(stanford).
ambitious_university(mit).

% University details 
university_details(stanford, 
    "https://www.stanford.edu/",
    "https://www.google.com/url?sa=i&url=https%3A%2F%2Famgenscholars.com%2Funiversity%2Fstanford-university%2F&psig=AOvVaw0D-Emz9uHHfvLwGWNDBIEd&ust=1745781361826000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCICqqMi09owDFQAAAAAdAAAAABAE",
    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.weforum.org%2Forganizations%2Fstanford-university%2F&psig=AOvVaw0D-Emz9uHHfvLwGWNDBIEd&ust=1745781361826000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCICqqMi09owDFQAAAAAdAAAAABAJ"). 
university_details(mit, 
    "https://www.mit.edu/",
    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.frontiersin.org%2Fnews%2F2019%2F04%2F02%2Fmit-and-frontiers-form-open-access-publishing-agreement&psig=AOvVaw12AGum1jhyeWlbRTwwjUC7&ust=1745781468078000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCLCA7vm09owDFQAAAAAdAAAAABAp",
    "data:image/png;base64,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"). 
university_details(ucb, 
   "https://www.stanford.edu/",
    "https://www.google.com/url?sa=i&url=https%3A%2F%2Famgenscholars.com%2Funiversity%2Fstanford-university%2F&psig=AOvVaw0D-Emz9uHHfvLwGWNDBIEd&ust=1745781361826000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCICqqMi09owDFQAAAAAdAAAAABAE",
    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.weforum.org%2Forganizations%2Fstanford-university%2F&psig=AOvVaw0D-Emz9uHHfvLwGWNDBIEd&ust=1745781361826000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCICqqMi09owDFQAAAAAdAAAAABAJ"). 
university_details(umich, 
    "https://www.stanford.edu/",
    "https://www.google.com/url?sa=i&url=https%3A%2F%2Famgenscholars.com%2Funiversity%2Fstanford-university%2F&psig=AOvVaw0D-Emz9uHHfvLwGWNDBIEd&ust=1745781361826000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCICqqMi09owDFQAAAAAdAAAAABAE",
    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.weforum.org%2Forganizations%2Fstanford-university%2F&psig=AOvVaw0D-Emz9uHHfvLwGWNDBIEd&ust=1745781361826000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCICqqMi09owDFQAAAAAdAAAAABAJ"). 
    university_details(ncsu, 
    "https://www.stanford.edu/",
    "https://www.google.com/url?sa=i&url=https%3A%2F%2Famgenscholars.com%2Funiversity%2Fstanford-university%2F&psig=AOvVaw0D-Emz9uHHfvLwGWNDBIEd&ust=1745781361826000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCICqqMi09owDFQAAAAAdAAAAABAE",
    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.weforum.org%2Forganizations%2Fstanford-university%2F&psig=AOvVaw0D-Emz9uHHfvLwGWNDBIEd&ust=1745781361826000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCICqqMi09owDFQAAAAAdAAAAABAJ"). 