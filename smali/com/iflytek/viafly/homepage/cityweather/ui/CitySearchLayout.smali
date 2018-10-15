.class public Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;
.super Landroid/widget/LinearLayout;
.source "CitySearchLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lajw;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lajw;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/lang/Runnable;

.field private d:Landroid/content/Context;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/ListView;

.field private g:Ljava/lang/String;

.field private h:Landroid/widget/ImageView;

.field private i:Lajq;

.field private j:Lajn;

.field private k:Landroid/os/Handler;

.field private l:Landroid/text/TextWatcher;

.field private m:Landroid/widget/AdapterView$OnItemClickListener;

.field private n:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$1;-><init>(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->l:Landroid/text/TextWatcher;

    .line 144
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$2;-><init>(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->c:Ljava/lang/Runnable;

    .line 176
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$3;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$3;-><init>(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->m:Landroid/widget/AdapterView$OnItemClickListener;

    .line 212
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$4;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$4;-><init>(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->n:Landroid/widget/AbsListView$OnScrollListener;

    .line 53
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->d:Landroid/content/Context;

    .line 54
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->a(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$1;-><init>(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->l:Landroid/text/TextWatcher;

    .line 144
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$2;-><init>(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->c:Ljava/lang/Runnable;

    .line 176
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$3;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$3;-><init>(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->m:Landroid/widget/AdapterView$OnItemClickListener;

    .line 212
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$4;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$4;-><init>(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->n:Landroid/widget/AbsListView$OnScrollListener;

    .line 59
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->d:Landroid/content/Context;

    .line 60
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->a(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->g:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    .line 64
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 65
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 66
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f030072

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 67
    .local v2, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v2, v3}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    const v4, 0x7f0b033c

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->e:Landroid/widget/EditText;

    .line 70
    const v4, 0x7f0b033d

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->h:Landroid/widget/ImageView;

    .line 71
    const v4, 0x7f0b033e

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->f:Landroid/widget/ListView;

    .line 72
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->h:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->e:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->l:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 78
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->getProvincialCapitals()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->b:Ljava/util/List;

    .line 79
    invoke-static {p1}, Lajo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "citysJson":Ljava/lang/String;
    invoke-static {v0}, Lajo;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->a:Ljava/util/List;

    .line 82
    new-instance v4, Lajn;

    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->d:Landroid/content/Context;

    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->b:Ljava/util/List;

    invoke-direct {v4, v5, v6}, Lajn;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->j:Lajn;

    .line 83
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->f:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->j:Lajn;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->f:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->m:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 87
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->f:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->n:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 89
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->k:Landroid/os/Handler;

    .line 90
    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->getProvincialCapitals()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Lajn;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->j:Lajn;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->f:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic g(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->k:Landroid/os/Handler;

    return-object v0
.end method

.method private getProvincialCapitals()Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lajw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v19, "cityList":Ljava/util/List;, "Ljava/util/List<Lajw;>;"
    new-instance v5, Lajw;

    const-string/jumbo v20, "\u6d59\u6c5f"

    const-string/jumbo v21, "\u676d\u5dde"

    const-string/jumbo v22, ""

    const/16 v23, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v5, v0, v1, v2, v3}, Lajw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 252
    .local v5, "cityArea1":Lajw;
    new-instance v11, Lajw;

    const-string/jumbo v20, "\u6c5f\u82cf"

    const-string/jumbo v21, "\u5357\u4eac"

    const-string/jumbo v22, ""

    const/16 v23, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v11, v0, v1, v2, v3}, Lajw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 253
    .local v11, "cityArea2":Lajw;
    new-instance v12, Lajw;

    const-string/jumbo v20, "\u56db\u5ddd"

    const-string/jumbo v21, "\u6210\u90fd"

    const-string/jumbo v22, ""

    const/16 v23, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v12, v0, v1, v2, v3}, Lajw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 254
    .local v12, "cityArea3":Lajw;
    new-instance v13, Lajw;

    const-string/jumbo v20, "\u9ed1\u9f99\u6c5f"

    const-string/jumbo v21, "\u54c8\u5c14\u6ee8"

    const-string/jumbo v22, ""

    const/16 v23, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v13, v0, v1, v2, v3}, Lajw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 255
    .local v13, "cityArea4":Lajw;
    new-instance v14, Lajw;

    const-string/jumbo v20, "\u6c5f\u897f"

    const-string/jumbo v21, "\u5357\u660c"

    const-string/jumbo v22, ""

    const/16 v23, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v14, v0, v1, v2, v3}, Lajw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 256
    .local v14, "cityArea5":Lajw;
    new-instance v15, Lajw;

    const-string/jumbo v20, "\u5929\u6d25"

    const-string/jumbo v21, "\u5929\u6d25"

    const-string/jumbo v22, ""

    const/16 v23, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v15, v0, v1, v2, v3}, Lajw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 257
    .local v15, "cityArea6":Lajw;
    new-instance v16, Lajw;

    const-string/jumbo v20, "\u6e56\u5357"

    const-string/jumbo v21, "\u957f\u6c99"

    const-string/jumbo v22, ""

    const/16 v23, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lajw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 258
    .local v16, "cityArea7":Lajw;
    new-instance v17, Lajw;

    const-string/jumbo v20, "\u6cb3\u5357"

    const-string/jumbo v21, "\u90d1\u5dde"

    const-string/jumbo v22, ""

    const/16 v23, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lajw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 259
    .local v17, "cityArea8":Lajw;
    new-instance v18, Lajw;

    const-string/jumbo v20, "\u91cd\u5e86"

    const-string/jumbo v21, "\u91cd\u5e86"

    const-string/jumbo v22, ""

    const/16 v23, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lajw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 260
    .local v18, "cityArea9":Lajw;
    new-instance v6, Lajw;

    const-string/jumbo v20, "\u5b89\u5fbd"

    const-string/jumbo v21, "\u5408\u80a5"

    const-string/jumbo v22, ""

    const/16 v23, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v6, v0, v1, v2, v3}, Lajw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 261
    .local v6, "cityArea10":Lajw;
    new-instance v7, Lajw;

    const-string/jumbo v20, "\u6e56\u5317"

    const-string/jumbo v21, "\u6b66\u6c49"

    const-string/jumbo v22, ""

    const/16 v23, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v7, v0, v1, v2, v3}, Lajw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 262
    .local v7, "cityArea11":Lajw;
    new-instance v8, Lajw;

    const-string/jumbo v20, "\u4e91\u5357"

    const-string/jumbo v21, "\u6606\u660e"

    const-string/jumbo v22, ""

    const/16 v23, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v8, v0, v1, v2, v3}, Lajw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 263
    .local v8, "cityArea12":Lajw;
    new-instance v9, Lajw;

    const-string/jumbo v20, "\u65b0\u7586"

    const-string/jumbo v21, "\u4e4c\u9c81\u6728\u9f50"

    const-string/jumbo v22, ""

    const/16 v23, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v9, v0, v1, v2, v3}, Lajw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 264
    .local v9, "cityArea13":Lajw;
    new-instance v10, Lajw;

    const-string/jumbo v20, "\u8fbd\u5b81"

    const-string/jumbo v21, "\u6c88\u9633"

    const-string/jumbo v22, ""

    const/16 v23, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v10, v0, v1, v2, v3}, Lajw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 266
    .local v10, "cityArea14":Lajw;
    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    return-object v19
.end method

.method static synthetic h(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Lajq;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->i:Lajq;

    return-object v0
.end method

.method static synthetic i(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->d:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 236
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->e:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 237
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->e:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->e:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/UIUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 240
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->k:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 243
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 96
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->e:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_0

    .line 100
    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->e:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b033c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCityAreaOperateCallback(Lajq;)V
    .locals 0
    .param p1, "callback"    # Lajq;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->i:Lajq;

    .line 232
    return-void
.end method
