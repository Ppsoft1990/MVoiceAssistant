.class public Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;
.super Landroid/widget/LinearLayout;
.source "CityManageLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;,
        Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

.field private e:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lajw;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/view/View;

.field private h:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$1;-><init>(Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->h:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$h;

    .line 46
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->a:Landroid/content/Context;

    .line 47
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->a(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$1;-><init>(Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->h:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$h;

    .line 52
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->a:Landroid/content/Context;

    .line 53
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->a(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;)Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->e:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;

    return-object v0
.end method

.method private a(Lajw;)V
    .locals 7
    .param p1, "cityArea"    # Lajw;

    .prologue
    .line 220
    if-eqz p1, :cond_2

    .line 222
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmcc.IFLY_CITYS_WEATHER_DATA"

    invoke-virtual {v4, v5}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "cityWeatherCache":Ljava/lang/String;
    invoke-static {v1}, Lajo;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 225
    .local v2, "cityWeatherList":Ljava/util/List;, "Ljava/util/List<Lajx;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajx;

    .line 226
    .local v0, "cityWeather":Lajx;
    invoke-virtual {v0, p1}, Lajx;->a(Lajw;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 227
    const-string/jumbo v4, "CityManageLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteCityWeatherCacheData: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lajw;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 233
    .end local v0    # "cityWeather":Lajx;
    :cond_1
    invoke-static {v2}, Lajo;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "cityWeathers":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmcc.IFLY_CITYS_WEATHER_DATA"

    invoke-virtual {v4, v5, v3}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .end local v1    # "cityWeatherCache":Ljava/lang/String;
    .end local v2    # "cityWeatherList":Ljava/util/List;, "Ljava/util/List<Lajx;>;"
    .end local v3    # "cityWeathers":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    .line 57
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 58
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 59
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030070

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 60
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    const v3, 0x7f0b0339

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->b:Landroid/widget/TextView;

    .line 63
    const v3, 0x7f0b033a

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->g:Landroid/view/View;

    .line 64
    const v3, 0x7f0b0337

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->c:Landroid/widget/RelativeLayout;

    .line 65
    const v3, 0x7f0b033b

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->d:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .line 66
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->d:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->setDragEnabled(Z)V

    .line 67
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->d:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->h:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$h;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->setDropListener(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$h;)V

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;Lajw;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;
    .param p1, "x1"    # Lajw;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->a(Lajw;)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->g:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a(Lajw;Ljava/util/List;)V
    .locals 4
    .param p1, "locateCity"    # Lajw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajw;",
            "Ljava/util/List",
            "<",
            "Lajw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "cityAreas":Ljava/util/List;, "Ljava/util/List<Lajw;>;"
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 72
    iput-object p2, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->f:Ljava/util/List;

    .line 74
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->f:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;-><init>(Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;Ljava/util/List;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->e:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;

    .line 75
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->d:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->e:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->d:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->setDragEnabled(Z)V

    .line 78
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->d:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->h:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$h;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->setDropListener(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$h;)V

    .line 80
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lajw;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->b:Landroid/widget/TextView;

    invoke-static {p1, v2}, Lajo;->a(Lajw;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
