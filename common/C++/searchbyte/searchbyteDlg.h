// searchbyteDlg.h : header file
//

#if !defined(AFX_SEARCHBYTEDLG_H__291B517A_8CFA_4370_AC87_B1BD5CDCFAF6__INCLUDED_)
#define AFX_SEARCHBYTEDLG_H__291B517A_8CFA_4370_AC87_B1BD5CDCFAF6__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CSearchbyteDlg dialog

class CSearchbyteDlg : public CDialog
{
// Construction
public:
	CSearchbyteDlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CSearchbyteDlg)
	enum { IDD = IDD_SEARCHBYTE_DIALOG };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSearchbyteDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CSearchbyteDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	virtual void OnOK();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SEARCHBYTEDLG_H__291B517A_8CFA_4370_AC87_B1BD5CDCFAF6__INCLUDED_)
