package com.picacomic.fregata.fragments;

import android.content.DialogInterface;
import android.os.Bundle;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.appcompat.widget.Toolbar;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import butterknife.BindView;
import butterknife.BindViews;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.b;
import com.picacomic.fregata.activities.MainActivity;
import com.picacomic.fregata.adapters.ComicListRecyclerViewAdapter;
import com.picacomic.fregata.b.d;
import com.picacomic.fregata.c.c;
import com.picacomic.fregata.objects.CategoryObject;
import com.picacomic.fregata.objects.ComicListObject;
import com.picacomic.fregata.objects.databaseTable.DbComicDetailObject;
import com.picacomic.fregata.objects.databaseTable.DbComicViewRecordObject;
import com.picacomic.fregata.objects.requests.SortingBody;
import com.picacomic.fregata.objects.responses.ComicRandomListResponse;
import com.picacomic.fregata.objects.responses.DataClass.ComicListResponse.ComicListResponse;
import com.picacomic.fregata.objects.responses.GeneralResponse;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.f;
import com.picacomic.fregata.utils.g;
import com.picacomic.fregata.utils.views.AlertDialogCenter;
import com.squareup.picasso.Picasso;
import java.util.ArrayList;
import java.util.List;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes.dex */
public class ComicListFragment extends BaseFragment implements View.OnClickListener, b {
    public static final String TAG = "ComicListFragment";
    private static int ny = 40;
    public static final int[] nz = {R.drawable.button_filter_forbidden_bg, R.drawable.button_filter_japanese_bg, R.drawable.button_filter_bl_bg, R.drawable.button_filter_heavy_bg, R.drawable.button_filter_pure_love_bg, R.drawable.button_filter_fake_girl_bg, R.drawable.button_filter_futari_bg, R.drawable.button_filter_webtoon_bg};
    private String author;

    @BindViews({R.id.button_comic_list_filter_forbidden, R.id.button_comic_list_filter_japanese, R.id.button_comic_list_filter_bl, R.id.button_comic_list_filter_heavy, R.id.button_comic_list_filter_pure_love, R.id.button_comic_list_filter_fake_girl, R.id.button_comic_list_filter_futari, R.id.button_comic_list_filter_webtoon})
    public Button[] buttons_filters;

    @BindView(R.id.coordinatorLayout)
    CoordinatorLayout coordinatorLayout;
    private String creatorId;
    private String creatorName;

    @BindView(R.id.editText_comic_list_current_page)
    EditText editText_currentPage;

    @BindView(R.id.frameLayout_comic_list_no_comics)
    FrameLayout frameLayout_noComics;
    int hP;

    @BindView(R.id.imageView_comic_list_empty)
    ImageView imageView_empty;
    boolean kE;
    Call<GeneralResponse<ComicListResponse>> nB;
    Call<GeneralResponse<ComicRandomListResponse>> nC;
    ComicListRecyclerViewAdapter nD;
    ArrayList<ComicListObject> nE;
    ArrayList<String> nF;
    String[] nG;
    boolean[] nH;
    private String nI;
    private String nJ;
    private String nK;
    private String nL;
    private String nM;
    int nN;
    int nO;
    boolean nP;
    boolean nQ;
    int page;

    @BindView(R.id.recyclerView_comic_list)
    RecyclerView recyclerView_comicList;
    private String tags;

    @BindView(R.id.textView_comic_list_total_page)
    TextView textView_totalPage;

    @BindView(R.id.toolbar)
    Toolbar toolbar;
    int totalPage;
    public boolean[] nA = {false, false, false, false, false, false, false, false};
    int nR = 0;
    int nS = 0;

    public static ComicListFragment a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        ComicListFragment comicListFragment = new ComicListFragment();
        Bundle bundle = new Bundle();
        bundle.putString("CATEGORY_TITLE", str);
        bundle.putString("KEYWORDS", str2);
        bundle.putString("TAGS", str3);
        bundle.putString("AUTHOR", str4);
        bundle.putString("FINISHED", str5);
        bundle.putString("SORTING", str6);
        bundle.putString("TRANSLATE", str7);
        bundle.putString("CREATOR_ID", str8);
        bundle.putString("CREATOR_NAME", str9);
        comicListFragment.setArguments(bundle);
        return comicListFragment;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.nI = getArguments().getString("CATEGORY_TITLE", null);
            this.nJ = getArguments().getString("KEYWORDS", null);
            this.tags = getArguments().getString("TAGS", null);
            this.author = getArguments().getString("AUTHOR", null);
            this.nK = getArguments().getString("FINISHED", null);
            this.nL = getArguments().getString("SORTING", null);
            this.nM = getArguments().getString("TRANSLATE", null);
            this.creatorId = getArguments().getString("CREATOR_ID", null);
            this.creatorName = getArguments().getString("CREATOR_NAME", null);
            f.D(TAG, "CAT=" + this.nI + "KEY=" + this.nJ + "TAG=" + this.tags + "AUT=" + this.author + "FIN=" + this.nK + "SOR=" + this.nL);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_comic_list, viewGroup, false);
        setHasOptionsMenu(true);
        a(viewInflate);
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        if (this.nJ != null) {
            menuInflater.inflate(R.menu.menu_comic_list_advanced, menu);
            menu.getItem(0).setShowAsAction(2);
            menu.getItem(1).setShowAsAction(2);
        } else if (this.nI != null && this.nI.equals("CATEGORY_RECENT_VIEW")) {
            menuInflater.inflate(R.menu.menu_comic_list, menu);
        } else if ((this.nI != null && this.nI.equals("CATEGORY_USER_FAVOURITE")) || (this.nI != null && this.nL != null && this.nL.equalsIgnoreCase("dd"))) {
            menuInflater.inflate(R.menu.menu_comic_list_sort, menu);
            menu.getItem(0).setShowAsAction(2);
        }
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(final MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.action_clear_recent) {
            AlertDialogCenter.showCustomAlertDialog(getContext(), R.drawable.icon_exclamation_error, R.string.alert_clear_all_recent_title, R.string.alert_clear_all_recent_message, new View.OnClickListener() { // from class: com.picacomic.fregata.fragments.ComicListFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ComicListFragment.this.cU();
                }
            }, (View.OnClickListener) null);
        }
        if (menuItem.getItemId() == R.id.action_sorting) {
            if (this.nI != null && this.nI.equals("CATEGORY_USER_FAVOURITE")) {
                AlertDialogCenter.sortingFavouriteOptions(getContext(), this.nR, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.ComicListFragment.4
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        ComicListFragment.this.nR = i;
                        ComicListFragment.this.page = 1;
                        ComicListFragment.this.totalPage = 1;
                        menuItem.setTitle(ComicListFragment.this.getResources().getStringArray(R.array.sorting_favourite)[i]);
                        ComicListFragment.this.nE.clear();
                        ComicListFragment.this.cV();
                        dialogInterface.dismiss();
                    }
                });
            } else {
                AlertDialogCenter.sortingAdvancedOptions(getContext(), this.nS, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.ComicListFragment.5
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        ComicListFragment.this.nS = i;
                        ComicListFragment.this.page = 1;
                        ComicListFragment.this.totalPage = 1;
                        String[] stringArray = ComicListFragment.this.getResources().getStringArray(R.array.sorting_advanced);
                        ComicListFragment.this.nL = c.uR[ComicListFragment.this.nS];
                        menuItem.setTitle(stringArray[i]);
                        ComicListFragment.this.nE.clear();
                        ComicListFragment.this.cW();
                        dialogInterface.dismiss();
                    }
                });
            }
        }
        if (menuItem.getItemId() == R.id.action_categories) {
            AlertDialogCenter.sortingAdvancedCategoriesOptions(getContext(), this.nG, this.nH, new DialogInterface.OnMultiChoiceClickListener() { // from class: com.picacomic.fregata.fragments.ComicListFragment.6
                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                public void onClick(DialogInterface dialogInterface, int i, boolean z) {
                    ComicListFragment.this.nH[i] = z;
                    if (z) {
                        if (ComicListFragment.this.nF == null) {
                            ComicListFragment.this.nF = new ArrayList<>();
                        }
                        ComicListFragment.this.nF.add(ComicListFragment.this.nG[i]);
                        return;
                    }
                    if (ComicListFragment.this.nF == null || ComicListFragment.this.nF.size() <= 0) {
                        return;
                    }
                    int i2 = -1;
                    for (int i3 = 0; i3 < ComicListFragment.this.nF.size(); i3++) {
                        int i4 = 0;
                        while (true) {
                            if (i4 >= ComicListFragment.this.nG.length) {
                                break;
                            }
                            if (ComicListFragment.this.nF.get(i3).equalsIgnoreCase(ComicListFragment.this.nG[i4])) {
                                i2 = i3;
                                break;
                            }
                            i4++;
                        }
                    }
                    ComicListFragment.this.nF.remove(i2);
                }
            }, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.fragments.ComicListFragment.7
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    ComicListFragment.this.page = 1;
                    ComicListFragment.this.totalPage = 1;
                    ComicListFragment.this.nE.clear();
                    ComicListFragment.this.cW();
                    dialogInterface.dismiss();
                }
            });
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void init() {
        super.init();
        if (getActivity() != null) {
            for (int i = 0; i < 8; i++) {
                this.nA[i] = e.d(getActivity(), i);
            }
        }
        this.kE = false;
        if (this.nE == null) {
            this.nQ = false;
            this.page = 1;
            this.totalPage = 1;
            this.hP = this.page;
            this.nP = false;
            this.nE = new ArrayList<>();
            this.kE = true;
            this.nN = 0;
            this.nO = 0;
        }
        ArrayList arrayList = new ArrayList();
        if (e.D(getContext()) != null && !e.D(getContext()).equalsIgnoreCase("")) {
            arrayList = (ArrayList) new Gson().fromJson(e.D(getContext()), new TypeToken<List<CategoryObject>>() { // from class: com.picacomic.fregata.fragments.ComicListFragment.8
            }.getType());
        }
        if (arrayList != null) {
            this.nG = new String[arrayList.size()];
            this.nH = new boolean[arrayList.size()];
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                this.nG[i2] = ((CategoryObject) arrayList.get(i2)).getTitle();
                this.nH[i2] = false;
            }
        }
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void ca() {
        super.ca();
        this.recyclerView_comicList.setLayoutManager(new LinearLayoutManager(getActivity()));
        this.nD = new ComicListRecyclerViewAdapter(getActivity(), this.nE, this);
        this.recyclerView_comicList.setAdapter(this.nD);
        if (this.buttons_filters != null) {
            for (int i = 0; i < this.buttons_filters.length; i++) {
                this.buttons_filters[i].setOnClickListener(this);
            }
        } else {
            Toast.makeText(getActivity(), "NULL!!!", 0).show();
        }
        this.recyclerView_comicList.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.picacomic.fregata.fragments.ComicListFragment.9
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i2) {
                super.onScrollStateChanged(recyclerView, i2);
                if (recyclerView.getLayoutManager() == null || !(recyclerView.getLayoutManager() instanceof LinearLayoutManager)) {
                    return;
                }
                if (ComicListFragment.this.editText_currentPage != null) {
                    int iFindFirstVisibleItemPosition = ((LinearLayoutManager) recyclerView.getLayoutManager()).findFirstVisibleItemPosition() / 21;
                    ComicListFragment.this.editText_currentPage.setHint((ComicListFragment.this.hP + iFindFirstVisibleItemPosition) + "");
                    ComicListFragment.this.editText_currentPage.setText("");
                }
                if (((LinearLayoutManager) recyclerView.getLayoutManager()).findLastVisibleItemPosition() == ((LinearLayoutManager) recyclerView.getLayoutManager()).getItemCount() - 1) {
                    if (ComicListFragment.this.nI == null || !ComicListFragment.this.nI.equals("CATEGORY_USER_FAVOURITE")) {
                        if (ComicListFragment.this.nI == null || !ComicListFragment.this.nI.equals("CATEGORY_RECENT_VIEW")) {
                            if (ComicListFragment.this.nI != null && ComicListFragment.this.nI.equals("CATEGORY_DOWNLOADED")) {
                                ComicListFragment.this.cT();
                                return;
                            } else {
                                ComicListFragment.this.cW();
                                return;
                            }
                        }
                        ComicListFragment.this.cS();
                        return;
                    }
                    ComicListFragment.this.cV();
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                super.onScrolled(recyclerView, i2, i3);
            }
        });
        this.editText_currentPage.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.picacomic.fregata.fragments.ComicListFragment.10
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                if (i2 != 6) {
                    return false;
                }
                try {
                    ComicListFragment.this.hP = Integer.parseInt(textView.getText().toString());
                    ComicListFragment.this.page = ComicListFragment.this.hP;
                } catch (Exception unused) {
                    ComicListFragment.this.hP = ComicListFragment.this.page;
                }
                ComicListFragment.this.nQ = true;
                if (ComicListFragment.this.nI != null && ComicListFragment.this.nI.equals("CATEGORY_USER_FAVOURITE")) {
                    ComicListFragment.this.cV();
                } else {
                    ComicListFragment.this.cW();
                }
                return true;
            }
        });
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bH() {
        super.bH();
        a(this.toolbar, this.nI, true);
        String string = getString(R.string.title_search);
        if (this.nJ != null) {
            if (getActivity() != null && (getActivity() instanceof AppCompatActivity)) {
                ((AppCompatActivity) getActivity()).setSupportActionBar(this.toolbar);
            }
            a(this.toolbar, this.nI, true);
            this.toolbar.setTitle(string + this.nJ);
            this.nL = c.uR[this.nS];
        } else if (this.tags != null) {
            this.toolbar.setTitle(string + this.tags);
        } else if (this.author != null) {
            this.toolbar.setTitle(string + this.author);
        } else if (this.nM != null) {
            this.toolbar.setTitle(string + this.nM);
        } else if (this.creatorId != null) {
            this.toolbar.setTitle(string + this.creatorName);
        } else if (this.nI != null && this.nI.equals("CATEGORY_RANDOM")) {
            this.toolbar.setTitle(R.string.category_title_random);
        } else if (this.nI != null && this.nI.equals("CATEGORY_USER_FAVOURITE")) {
            if (getActivity() != null && (getActivity() instanceof AppCompatActivity)) {
                ((AppCompatActivity) getActivity()).setSupportActionBar(this.toolbar);
            }
            a(this.toolbar, this.nI, true);
            this.toolbar.setTitle(R.string.bookmarked);
        } else if (this.nI != null && this.nI.equals("CATEGORY_RECENT_VIEW")) {
            if (getActivity() != null && (getActivity() instanceof AppCompatActivity)) {
                ((AppCompatActivity) getActivity()).setSupportActionBar(this.toolbar);
            }
            a(this.toolbar, this.nI, true);
            this.toolbar.setTitle(R.string.recent_view);
        } else if (this.nI != null && this.nI.equals("CATEGORY_DOWNLOADED")) {
            this.toolbar.setTitle(R.string.downloaded);
        } else if (this.nI != null) {
            if (getActivity() != null && (getActivity() instanceof AppCompatActivity)) {
                ((AppCompatActivity) getActivity()).setSupportActionBar(this.toolbar);
            }
            a(this.toolbar, this.nI, true);
            this.toolbar.setTitle(this.nI + "");
        } else if (this.nL != null && this.nL.equalsIgnoreCase("dd")) {
            this.toolbar.setTitle(R.string.category_title_latest);
        }
        for (int i = 0; i < 8; i++) {
            this.nD.a(i, this.nA[i]);
            if (this.nA[i]) {
                this.buttons_filters[i].setBackgroundResource(R.drawable.button_filter_selected_bg);
            } else {
                this.buttons_filters[i].setBackgroundResource(nz[i]);
            }
        }
        if (getActivity() != null && (getActivity() instanceof MainActivity)) {
            ((MainActivity) getActivity()).t(8);
        }
        if (this.kE) {
            if (this.nI != null && this.nI.equals("CATEGORY_RANDOM")) {
                cR();
                return;
            }
            if (this.nI != null && this.nI.equals("CATEGORY_USER_FAVOURITE")) {
                cV();
                return;
            }
            if (this.nI != null && this.nI.equals("CATEGORY_RECENT_VIEW")) {
                cS();
            } else if (this.nI != null && this.nI.equals("CATEGORY_DOWNLOADED")) {
                cT();
            } else {
                cW();
            }
        }
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment
    public void bI() {
        super.bI();
        if (isAdded()) {
            if (this.nE == null || (this.nE != null && this.nE.size() == 0)) {
                Picasso.with(getActivity()).load(R.drawable.icon_empty).into(this.imageView_empty);
                this.frameLayout_noComics.setVisibility(0);
            } else {
                this.frameLayout_noComics.setVisibility(8);
            }
            if (this.nI != null && this.nI.equals("CATEGORY_RECENT_VIEW")) {
                long jCount = DbComicViewRecordObject.count(DbComicViewRecordObject.class);
                long j = jCount / ((long) ny);
                if (jCount % ((long) ny) != 0) {
                    j++;
                }
                this.textView_totalPage.setText(j + "");
            } else if (this.nI != null && this.nI.equals("CATEGORY_DOWNLOADED")) {
                long jCount2 = DbComicDetailObject.count(DbComicDetailObject.class, "download_status > 0", null);
                long j2 = jCount2 / ((long) ny);
                if (jCount2 % ((long) ny) != 0) {
                    j2++;
                }
                this.textView_totalPage.setText(j2 + "");
            } else {
                this.textView_totalPage.setText(this.totalPage + "");
            }
            this.nD.notifyDataSetChanged();
        }
    }

    public void cR() {
        C(getResources().getString(R.string.loading_comic_viewer));
        this.nC = new d(getContext()).dO().ao(e.z(getActivity()));
        this.nC.enqueue(new Callback<GeneralResponse<ComicRandomListResponse>>() { // from class: com.picacomic.fregata.fragments.ComicListFragment.11
            @Override // retrofit2.Callback
            public void onResponse(Call<GeneralResponse<ComicRandomListResponse>> call, Response<GeneralResponse<ComicRandomListResponse>> response) {
                if (response.code() == 200) {
                    f.aA(response.body().data.toString());
                    if (response.body().data != null && response.body().data.getComics() != null) {
                        for (int i = 0; i < response.body().data.getComics().size(); i++) {
                            ComicListFragment.this.nE.add(response.body().data.getComics().get(i));
                        }
                    }
                } else {
                    try {
                        new com.picacomic.fregata.b.c(ComicListFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                ComicListFragment.this.bC();
                ComicListFragment.this.bI();
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<GeneralResponse<ComicRandomListResponse>> call, Throwable th) {
                th.printStackTrace();
                ComicListFragment.this.bC();
                new com.picacomic.fregata.b.c(ComicListFragment.this.getActivity()).dN();
                ComicListFragment.this.bI();
            }
        });
    }

    public void cS() {
        List listFindWithQuery = DbComicViewRecordObject.findWithQuery(DbComicViewRecordObject.class, "SELECT * FROM db_comic_view_record_object WHERE last_view_timestamp > 0 ORDER BY last_view_timestamp DESC LIMIT ? OFFSET ?", ny + "", this.nN + "");
        if (listFindWithQuery == null || this.nE == null) {
            return;
        }
        for (int i = 0; i < listFindWithQuery.size(); i++) {
            List listFind = DbComicDetailObject.find(DbComicDetailObject.class, "comic_id = ?", ((DbComicViewRecordObject) listFindWithQuery.get(i)).getComicId());
            if (listFind != null && listFind.size() > 0) {
                this.nE.add(new ComicListObject((DbComicDetailObject) listFind.get(0)));
                f.D(TAG, "recent View " + i + " = " + ((DbComicViewRecordObject) listFindWithQuery.get(i)).toString());
            }
        }
        this.nN = this.nE.size();
        bI();
    }

    public void cT() {
        List listFindWithQuery = DbComicDetailObject.findWithQuery(DbComicDetailObject.class, "SELECT * FROM db_comic_detail_object WHERE download_status > 0 ORDER BY downloaded_at DESC LIMIT ? OFFSET ?", ny + "", this.nO + "");
        if (listFindWithQuery == null || this.nE == null) {
            return;
        }
        for (int i = 0; i < listFindWithQuery.size(); i++) {
            this.nE.add(new ComicListObject((DbComicDetailObject) listFindWithQuery.get(i)));
            f.D(TAG, "recent View " + i + " = " + ((DbComicDetailObject) listFindWithQuery.get(i)).toString());
        }
        this.nO = this.nE.size();
        bI();
    }

    public void cU() {
        DbComicViewRecordObject.deleteAll(DbComicViewRecordObject.class);
        if (this.nE != null) {
            this.nE.clear();
            this.nD.notifyDataSetChanged();
            Toast.makeText(getContext(), R.string.alert_clear_all_recent_success, 0).show();
        }
    }

    public void cV() {
        if (this.totalPage < this.page || this.nP) {
            return;
        }
        this.nP = true;
        C(getResources().getString(R.string.loading_comic_viewer));
        this.nB = new d(getContext()).dO().a(e.z(getActivity()), c.uQ[this.nR], this.page);
        this.nB.enqueue(new Callback<GeneralResponse<ComicListResponse>>() { // from class: com.picacomic.fregata.fragments.ComicListFragment.2
            @Override // retrofit2.Callback
            public void onResponse(Call<GeneralResponse<ComicListResponse>> call, Response<GeneralResponse<ComicListResponse>> response) {
                if (response.code() == 200) {
                    f.aA(response.body().data.toString());
                    if (response.body().data != null && response.body().data.getComics() != null && response.body().data.getComics().getDocs() != null) {
                        int unused = ComicListFragment.ny = response.body().data.getComics().getLimit();
                        if (ComicListFragment.this.nQ) {
                            if (ComicListFragment.this.nE != null) {
                                ComicListFragment.this.nE.clear();
                            } else {
                                ComicListFragment.this.nE = new ArrayList<>();
                            }
                            ComicListFragment.this.nQ = false;
                        }
                        for (int i = 0; i < response.body().data.getComics().getDocs().size(); i++) {
                            ComicListFragment.this.nE.add(response.body().data.getComics().getDocs().get(i));
                        }
                        ComicListFragment.this.totalPage = response.body().data.getComics().getPages();
                        ComicListFragment.this.page++;
                    }
                } else {
                    try {
                        new com.picacomic.fregata.b.c(ComicListFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                ComicListFragment.this.bC();
                ComicListFragment.this.bI();
                ComicListFragment.this.nP = false;
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<GeneralResponse<ComicListResponse>> call, Throwable th) {
                th.printStackTrace();
                ComicListFragment.this.bC();
                new com.picacomic.fregata.b.c(ComicListFragment.this.getActivity()).dN();
                ComicListFragment.this.bI();
                ComicListFragment.this.nP = false;
            }
        });
    }

    public void cW() {
        if (this.totalPage < this.page || this.nP) {
            return;
        }
        this.nP = true;
        C(getResources().getString(R.string.loading_comic_viewer));
        d dVar = new d(getContext());
        if (this.nJ != null) {
            this.nB = dVar.dO().a(e.z(getActivity()), this.page, new SortingBody(this.nJ, this.nL, this.nF));
        } else {
            this.nB = dVar.dO().a(e.z(getActivity()), this.page, this.nI, this.tags, this.author, this.nK, this.nL, this.nM, this.creatorId);
        }
        this.nB.enqueue(new Callback<GeneralResponse<ComicListResponse>>() { // from class: com.picacomic.fregata.fragments.ComicListFragment.3
            @Override // retrofit2.Callback
            public void onResponse(Call<GeneralResponse<ComicListResponse>> call, Response<GeneralResponse<ComicListResponse>> response) {
                if (response.code() == 200) {
                    f.aA(response.body().data.toString());
                    if (response.body().data != null && response.body().data.getComics() != null && response.body().data.getComics().getDocs() != null) {
                        int unused = ComicListFragment.ny = response.body().data.getComics().getLimit();
                        if (ComicListFragment.this.nQ) {
                            if (ComicListFragment.this.nE != null) {
                                ComicListFragment.this.nE.clear();
                            } else {
                                ComicListFragment.this.nE = new ArrayList<>();
                            }
                            ComicListFragment.this.nQ = false;
                        }
                        for (int i = 0; i < response.body().data.getComics().getDocs().size(); i++) {
                            ComicListFragment.this.nE.add(response.body().data.getComics().getDocs().get(i));
                        }
                        ComicListFragment.this.totalPage = response.body().data.getComics().getPages();
                        ComicListFragment.this.page++;
                    }
                } else {
                    try {
                        new com.picacomic.fregata.b.c(ComicListFragment.this.getActivity(), response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                ComicListFragment.this.bC();
                ComicListFragment.this.bI();
                ComicListFragment.this.nP = false;
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<GeneralResponse<ComicListResponse>> call, Throwable th) {
                th.printStackTrace();
                ComicListFragment.this.bC();
                new com.picacomic.fregata.b.c(ComicListFragment.this.getActivity()).dN();
                ComicListFragment.this.bI();
                ComicListFragment.this.nP = false;
            }
        });
    }

    @Override // com.picacomic.fregata.a_pkg.b
    public void C(int i) {
        getFragmentManager().beginTransaction().setCustomAnimations(R.anim.transaction_anim_enter, R.anim.transaction_anim_exit, R.anim.transaction_anim_pop_enter, R.anim.transaction_anim_pop_exit).replace(R.id.container, ComicDetailFragment.a(this.nE.get(i - (i / 21))), ComicDetailFragment.TAG).addToBackStack(ComicDetailFragment.TAG).commit();
    }

    @Override // com.picacomic.fregata.a_pkg.b
    public void I(int i) {
        int i2 = i - (i / 21);
        if (this.nE == null || this.nE.size() <= i2 || this.nE.get(i2) == null || this.nE.get(i2).getThumb() == null) {
            return;
        }
        D(g.b(this.nE.get(i2).getThumb()));
    }

    @Override // com.picacomic.fregata.fragments.BaseFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        if (this.nB != null) {
            this.nB.cancel();
        }
        if (this.nC != null) {
            this.nC.cancel();
        }
        super.onDetach();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.button_comic_list_filter_bl /* 2131296328 */:
                K(2);
                this.nD.a(2, this.nA[2]);
                break;
            case R.id.button_comic_list_filter_fake_girl /* 2131296329 */:
                K(5);
                this.nD.a(5, this.nA[5]);
                break;
            case R.id.button_comic_list_filter_forbidden /* 2131296330 */:
                K(0);
                this.nD.a(0, this.nA[0]);
                break;
            case R.id.button_comic_list_filter_futari /* 2131296331 */:
                K(6);
                this.nD.a(6, this.nA[6]);
                break;
            case R.id.button_comic_list_filter_heavy /* 2131296332 */:
                K(3);
                this.nD.a(3, this.nA[3]);
                break;
            case R.id.button_comic_list_filter_japanese /* 2131296333 */:
                K(1);
                this.nD.a(1, this.nA[1]);
                break;
            case R.id.button_comic_list_filter_pure_love /* 2131296334 */:
                K(4);
                this.nD.a(4, this.nA[4]);
                break;
            case R.id.button_comic_list_filter_webtoon /* 2131296335 */:
                K(7);
                this.nD.a(7, this.nA[7]);
                break;
        }
    }

    public boolean K(int i) {
        if (this.nA[i]) {
            this.buttons_filters[i].setBackgroundResource(nz[i]);
            this.nA[i] = false;
            e.a(getActivity(), i, false);
            Toast.makeText(getContext(), getString(R.string.toast_comic_list_filter_prefix) + this.buttons_filters[i].getText().toString() + getString(R.string.toast_comic_list_filter_unfiltered_suffix), 0).show();
            return false;
        }
        this.buttons_filters[i].setBackgroundResource(R.drawable.button_filter_selected_bg);
        this.nA[i] = true;
        e.a(getActivity(), i, true);
        Toast.makeText(getContext(), getString(R.string.toast_comic_list_filter_prefix) + this.buttons_filters[i].getText().toString() + getString(R.string.toast_comic_list_filter_filtered_suffix), 0).show();
        return true;
    }
}
