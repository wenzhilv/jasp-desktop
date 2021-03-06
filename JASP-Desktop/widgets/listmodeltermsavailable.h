//
// Copyright (C) 2013-2018 University of Amsterdam
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public
// License along with this program.  If not, see
// <http://www.gnu.org/licenses/>.
//

#ifndef LISTMODELTERMSAVAILABLE_H
#define LISTMODELTERMSAVAILABLE_H

#include "listmodelavailableinterface.h"
#include "common.h"

class ListModelTermsAvailable : public ListModelAvailableInterface
{
	Q_OBJECT	
public:
	ListModelTermsAvailable(QMLListView* listView);
	
	virtual QVariant data(const QModelIndex &index, int role) const OVERRIDE;
	
	virtual void resetTermsFromSourceModels() OVERRIDE;
	virtual ListModel* getSourceModelOfTerm(const Term& term);
	
	void setEmptyValue(QString emptyValue)	{ _addEmptyValue = true; _emptyValue = emptyValue; }	

protected:
	virtual void _resetTerms(const Terms &terms);
	
private:	
	std::map<QString, ListModel*> _termSourceModelMap;	
	bool _addEmptyValue;
	QString _emptyValue;
};

#endif // LISTMODELTERMSAVAILABLE_H
