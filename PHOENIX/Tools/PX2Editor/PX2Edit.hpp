// PX2Edit.hpp

#ifndef PX2EDIT_HPP
#define PX2EDIT_HPP

#include "PX2EditorPre.hpp"
#include "PX2Singleton_NeedNew.hpp"
#include "PX2EditDefine.hpp"
#include "PX2GeoObjFactory.hpp"
#include "PX2EditParams.hpp"
#include "PX2SelectResData.hpp"
#include "PX2EditTimeLineEdit.hpp"
#include "PX2TerrainEdit.hpp"
#include "PX2APoint.hpp"

namespace PX2
{

	class EditParams;
	class EU_Manager;

	class PX2_EDITOR_ITEM Edit : public EventHandler, public Singleton<Edit>
	{
	public:
		Edit();
		~Edit();

		bool Initlize(const std::string &tag);
		bool Initlize1(const std::string &tag);
		bool Terminate();
		void Reset();

		Node *GetHelpNode() { return mHelpNode; }

	protected:
		PX2::NodePtr mHelpNode;

	public:
		enum EditType
		{
			ET_SCENE,
			ET_TERRAIN,
			ET_UI,
			ET_SIMULATE,
			ET_PLAY,
			ET_MAXTYPE
		};
		void SetEditType(EditType type);
		EditType GetEditType() const;
		bool CanDoEdit() const;

		enum EditAxisMode
		{
			EAM_WORLD,
			EAM_LOCAL,
			EAM_PARENT,
			EMA_MAX_MODE
		};
		void SetEditAxisMode(EditAxisMode mode);
		EditAxisMode GetEdtiAxisMode() const;

		enum EditMode
		{
			EM_NONE,
			EM_SELECT,
			EM_TRANSLATE,
			EM_ROTATE,
			EM_SCALE,
			EM_MAX_MODE
		};
		void SetEditMode(EditMode mode);
		EditMode GetEditMode() const;
		bool IsEditModeNone() const;

		enum RenderMode
		{
			RM_NORMAL,
			RM_WIREFRAME,
			RM_MAX_MODE
		};
		void SetRenderMode(RenderMode mode);
		RenderMode GetRenderMode() const;

		enum CameraMode
		{
			CM_PERSPECTIVE,
			CM_LEFT,
			CM_RIGHT,
			CM_FRONT,
			CM_BACK,
			CM_BOTTOM,
			CM_TOP,
			CM_MAX_TYPE
		};
		void SetCameraMode(CameraMode camMode);
		CameraMode GetCameraMode() const;

		enum SimuRenderViewMode
		{
			SRVM_PROJ,
			SRVM_FULL,
			SRVM_MAX_MODE
		};
		void SetSimuRenderViewMode(SimuRenderViewMode mode);
		SimuRenderViewMode GetSimuRenderViewMode() const;

	protected:
		EditType mEditType;
		EditAxisMode mEditAxisMode;
		EditMode mEditMode;
		RenderMode mRenderMode;
		CameraMode mCameraMode;
		SimuRenderViewMode mSimuRenderViewMode;

	public:
		GeoObjFactory *GetGOF();

		static int GetEditID();

	protected:
		GeoObjFactory *mGeoObjFactory;
		
		static int msEditorID;

		// key
	public:
		bool IsAltDown;
		bool IsCtrlDown;
		bool IsShiftDown;
		bool IsKeyDown_W;
		bool IsKeyDown_S;
		bool IsKeyDown_A;
		bool IsKeyDown_D;
		bool IsLeftMouseDown;
		bool IsRightMouseDown;
		bool IsMidMouseDown;

	public:
		void SetEditorCameraNode(CameraNode *editCameraNode);
		CameraNode *GetEditorCameraNode();

		void SetCameraMoveLevel(int level);
		int GetCameraMoveLevel() const;
		float GetCameraMoveSpeedBase() const;
		float GetCameraMoveSpeed() const;

	protected:
		CameraNodePtr mEditCameraNode;
		int mCameraMoveLevel;
		float mCameraMoveSpeedBase;

		// Pick
	public:
		void SetPickPos(const APoint &pos);
		const APoint &GetPickPos() const;
		APoint GetPickLocalPos(Movable *nodeParent);

	protected:
		APoint mPickPos;

		// Select
	public:
		void FocusOnSelection();
		bool DeleteSelection();
		void GetSelectionCenterRadius(int &numMovs, APoint &posCenter, 
			APoint &boundCenter, float &radius);

		// select res
	public:
		enum ChangeDirType
		{
			CDT_ONLYSELECT,
			CDT_TREE_REFRESH,
			CDT_GRID_REFRESH,
			CDT_MAX_TYPE
		};
		void ChangeSelectResDir(const std::string &path, ChangeDirType cdt);
		const std::string &GetSelectedResDir() const;
		void SetSelectPath_ChildFilenames(const std::vector<std::string> &filenamess);
		void SetSelectPath_ChildPaths(const std::vector<std::string> &paths);
		const std::vector<std::string> &GetSelectPath_ChildFilenames() const;
		const std::vector<std::string> &GetSelectPath_ChildPaths() const;

		void SetSelectedResource(const SelectResData &data);
		const SelectResData &GetSelectedResource() const;
		void CopySelectResourcePath();

	protected:
		std::vector<std::string> mSelectPath_ChildFilenames;
		std::vector<std::string> mSelectPath_ChildPaths;

		std::string mSelectResDir;
		SelectResData mSelectResData;

		// select res find
	public:
		void FindSelectInProjTree();
		void FindSelectInResTree();

		// PreView Object
	public:
		void SetPreViewObject(Object *obj);
		PX2::Object *GetPreViewObject();

	protected:
		PX2::ObjectPtr mPreObject;

		// undo redo
	public:
		void Undo();
		void Redo();

		// Copy
	public:
		void SetCopyObject(Object *obj);
		Object *GetCopyObject();
		void CopyObject();
		void PasteCopyedObject();
		void CloneSelectedObject();
		void DeleteObject();

		void SetCopyText(const std::string &copyText);
		const std::string &GetCopyText() const;

	protected:
		PX2::ObjectPtr mCopyObject;
		std::string mCopyText;

		// export
	public:
		bool Import(const char *pathname);
		bool Export(PX2::Object *obj, const char *pathname);

		// anim
	public:
		void AnimResetPlay();
		void AnimPlay();
		void AnimStop();
		void AnimReset();
		
		bool IsAnimPlaying();
		void AnimPlayStop();

		// TimeLine
	public:
		TimeLineEdit *GetTimeLineEdit();

		void MakeSelectTimeLineEdit();
		void TimeLine_UIGroup_Delete();
		void TimeLine_UIGroup_DeleteAll();
		void TimeLine_AddPoint();
		void TimeLine_DeletePoint();
		void TimeLine_SetInValue();
		void TimeLine_SetOutValue();

	protected:
		TimeLineEdit *mTimeLineEidt;

		// Terrain
	public:
		TerrainEdit *GetTerrainEdit();

	protected:
		TerrainEdit *mTerrainEdit;

		// UI
	public:
		EU_Manager *GetEU_Manager();

	protected:
		EU_Manager *mEU_Man;

	public:
		virtual void OnEvent(Event *event);

		// opened
	public:
		void AddOpenedFile(const std::string &path);
		bool IsAddedOpenedFile(const std::string &path);
		bool RemoveOpenedFile(const std::string &path);
		void SetActivateOpenedFile(const std::string &path);
		const std::string &GetActivateOpenedFile() const;

	protected:
		std::vector<std::string> mOpenedFiles;
		std::string mActivateOpenedFile;

		// Events
	public:
		void BroadCastEditorEventRefreshRes();
		void BraodCastEditorEventClearRes();
		void BroadCastEditorEventUp();
		void BroadCastEditorEventDown();
		void BroadCastEditorEventPlayInWindow();
		void BroadCastEditorSaveText();
		void OpenResIn(const std::string &pathFilename);
		void OpenResOut(const std::string &pathFilename);
	};

#include "PX2Edit.inl"

#define PX2_EDIT Edit::GetSingleton()
#define PX2_EDIT_GETID Edit::GetEditID()

}

#endif