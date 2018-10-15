.class public Lcom/iflytek/viafly/voicerole/view/HotRecommendView;
.super Lcom/iflytek/base/skin/customView/XLinearLayout;
.source "HotRecommendView.java"


# instance fields
.field public a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/LinearLayout;

.field private d:Lbbb;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lbbb;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "callBack"    # Lbbb;
    .param p4, "mEntryType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;",
            ">;",
            "Lbbb;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "hotModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->a:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->b:Ljava/util/List;

    .line 37
    iput-object p3, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->d:Lbbb;

    .line 38
    iput-object p4, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->f:Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->a()V

    .line 40
    return-void
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 46
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->a:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 48
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0300ab

    invoke-virtual {v1, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 49
    .local v2, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v2, v3}, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    const v4, 0x7f0b0489

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    .line 51
    .local v0, "hs":Landroid/widget/HorizontalScrollView;
    invoke-virtual {v0, v6}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 52
    const v4, 0x7f0b048a

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->c:Landroid/widget/LinearLayout;

    .line 53
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->b()V

    .line 54
    return-void
.end method

.method private b()V
    .locals 8

    .prologue
    .line 58
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->e:Ljava/util/List;

    .line 59
    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 60
    .local v2, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    new-instance v0, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;

    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->d:Lbbb;

    iget-object v6, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->f:Ljava/lang/String;

    invoke-direct {v0, v4, v2, v5, v6}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Lbbb;Ljava/lang/String;)V

    .line 61
    .local v0, "hotVoiceItem":Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->a:Landroid/content/Context;

    const-wide v6, 0x4064a00000000000L    # 165.0

    invoke-static {v4, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 62
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->e:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    .end local v0    # "hotVoiceItem":Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;
    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "hotModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->b:Ljava/util/List;

    .line 72
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->e:Ljava/util/List;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setSelectRingId(Ljava/lang/String;)V
    .locals 3
    .param p1, "selectRingId"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->e:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;

    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->setSelectRingId(Ljava/lang/String;)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setSelectVoiceId(Ljava/lang/String;)V
    .locals 3
    .param p1, "selectVoiceId"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->e:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/HotRecommendView;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;

    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/voicerole/view/HotVoiceItem;->setSelectVoiceId(Ljava/lang/String;)V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
