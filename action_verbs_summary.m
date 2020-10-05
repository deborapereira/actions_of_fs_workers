%% AFTER RUNNING THE PREVIOUS CODE FOR ALL BOOKS,
% delete all variables except selected_verbs_JP, selected_verbs_IT and selected_verbs_US

% get verbs from the 3 books
selected_verbs_list = bagOfWords([selected_verbs_JP.JP; selected_verbs_IT.IT; selected_verbs_US.US]');

% order verbs alphabetically
selected_verbs_list = table(selected_verbs_list.Vocabulary');
selected_verbs_list = sortrows(selected_verbs_list,'Var1','ascend');
selected_verbs_list = selected_verbs_list.Var1;

% check which  books have each verb 
isInBook = NaN(length(selected_verbs_list),3); % 3 = nb of books
for i=1:length(selected_verbs_list)
    isInBook(i,1) = length(find(strcmp(selected_verbs_US.US,selected_verbs_list(i))));
    isInBook(i,2) = length(find(strcmp(selected_verbs_JP.JP,selected_verbs_list(i))));
    isInBook(i,3) = length(find(strcmp(selected_verbs_IT.IT,selected_verbs_list(i))));
end




