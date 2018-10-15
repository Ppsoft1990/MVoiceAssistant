.class public Lcom/iflytek/viafly/guide/UserGuideCustomSpeakerView;
.super Lcom/iflytek/viafly/guide/AbsCustomView;
.source "UserGuideCustomSpeakerView.java"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lagu;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/guide/AbsCustomView;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomSpeakerView;->c:Ljava/util/List;

    .line 36
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/guide/UserGuideCustomSpeakerView;->a(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    .line 40
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 41
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 42
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030094

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 43
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/viafly/guide/UserGuideCustomSpeakerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    const v3, 0x7f0b03e3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomSpeakerView;->a:Landroid/widget/ListView;

    .line 45
    new-instance v3, Lagu;

    invoke-virtual {p0}, Lcom/iflytek/viafly/guide/UserGuideCustomSpeakerView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/viafly/guide/UserGuideCustomSpeakerView;->c:Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lagu;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomSpeakerView;->b:Lagu;

    .line 46
    iget-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomSpeakerView;->a:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/iflytek/viafly/guide/UserGuideCustomSpeakerView;->b:Lagu;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    return-void
.end method


# virtual methods
.method public a()V
    .locals 12

    .prologue
    .line 50
    iget-object v10, p0, Lcom/iflytek/viafly/guide/UserGuideCustomSpeakerView;->c:Ljava/util/List;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/iflytek/viafly/guide/UserGuideCustomSpeakerView;->c:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 103
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v10, p0, Lcom/iflytek/viafly/guide/UserGuideCustomSpeakerView;->c:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 54
    new-instance v9, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-direct {v9}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;-><init>()V

    .line 55
    .local v9, "woman":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Ljava/lang/String;)V

    .line 56
    sget-object v10, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_INIT:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-virtual {v9, v10}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Lcom/iflytek/viafly/voicerole/model/Status;)V

    .line 57
    const-string/jumbo v10, "\u7075\u7280\u9ed8\u8ba4\u5973\u58f0"

    invoke-virtual {v9, v10}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->b(Ljava/lang/String;)V

    .line 58
    const-string/jumbo v10, "jiajia"

    invoke-virtual {v9, v10}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g(Ljava/lang/String;)V

    .line 59
    const-string/jumbo v10, "drawable://2130838171"

    invoke-virtual {v9, v10}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v10, "\u61c2\u4f60\u7684\u8bed\u97f3\u52a9\u624b"

    invoke-virtual {v9, v10}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c(Ljava/lang/String;)V

    .line 61
    const-string/jumbo v10, "0"

    invoke-virtual {v9, v10}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e(Ljava/lang/String;)V

    .line 62
    new-instance v8, Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;

    invoke-direct {v8}, Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;-><init>()V

    .line 63
    .local v8, "voiceTxtModel":Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;
    const-string/jumbo v10, ""

    invoke-virtual {v8, v10}, Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;->c(Ljava/lang/String;)V

    .line 64
    const-string/jumbo v10, "\u61c2\u4f60\u7684\u8bed\u97f3\u52a9\u624b"

    invoke-virtual {v8, v10}, Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;->a(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v10, "3"

    invoke-virtual {v8, v10}, Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;->b(Ljava/lang/String;)V

    .line 66
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v5, "txt":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;>;"
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {v9, v5}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Ljava/util/List;)V

    .line 69
    const-string/jumbo v10, "0"

    invoke-virtual {v9, v10}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e(Ljava/lang/String;)V

    .line 70
    iget-object v10, p0, Lcom/iflytek/viafly/guide/UserGuideCustomSpeakerView;->c:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v2, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-direct {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;-><init>()V

    .line 72
    .local v2, "man":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    const-string/jumbo v10, "-1"

    invoke-virtual {v2, v10}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Ljava/lang/String;)V

    .line 73
    sget-object v10, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_INIT:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-virtual {v2, v10}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Lcom/iflytek/viafly/voicerole/model/Status;)V

    .line 74
    const-string/jumbo v10, "\u7075\u7280\u9ed8\u8ba4\u7537\u58f0"

    invoke-virtual {v2, v10}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->b(Ljava/lang/String;)V

    .line 75
    const-string/jumbo v10, "xiaobin_talking"

    invoke-virtual {v2, v10}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g(Ljava/lang/String;)V

    .line 76
    const-string/jumbo v10, "drawable://2130838172"

    invoke-virtual {v2, v10}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d(Ljava/lang/String;)V

    .line 77
    const-string/jumbo v10, "\u61c2\u4f60\u7684\u8bed\u97f3\u52a9\u624b"

    invoke-virtual {v2, v10}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v2, v5}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Ljava/util/List;)V

    .line 79
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(I)V

    .line 80
    const-string/jumbo v10, "0"

    invoke-virtual {v2, v10}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e(Ljava/lang/String;)V

    .line 81
    iget-object v10, p0, Lcom/iflytek/viafly/guide/UserGuideCustomSpeakerView;->c:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v7, Lbbm;

    invoke-virtual {p0}, Lcom/iflytek/viafly/guide/UserGuideCustomSpeakerView;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v7, v10, v11}, Lbbm;-><init>(Landroid/content/Context;Lbbb;)V

    .line 84
    .local v7, "voiceRoleDataManager":Lbbm;
    invoke-virtual {v7}, Lbbm;->a()Lbbo;

    move-result-object v0

    .line 85
    .local v0, "currentVoiceRoleModel":Lbbo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbbo;->c()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 86
    iget-object v10, p0, Lcom/iflytek/viafly/guide/UserGuideCustomSpeakerView;->c:Ljava/util/List;

    invoke-virtual {v0}, Lbbo;->c()Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    :cond_1
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v10

    invoke-virtual {v10}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 89
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v10

    invoke-virtual {v10}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "selectId":Ljava/lang/String;
    const/4 v4, -0x1

    .line 91
    .local v4, "selectIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v10, p0, Lcom/iflytek/viafly/guide/UserGuideCustomSpeakerView;->c:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_2

    .line 92
    iget-object v10, p0, Lcom/iflytek/viafly/guide/UserGuideCustomSpeakerView;->c:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 93
    .local v6, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-eqz v6, :cond_4

    .line 94
    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 95
    move v4, v1

    .line 100
    .end local v6    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_2
    iget-object v10, p0, Lcom/iflytek/viafly/guide/UserGuideCustomSpeakerView;->b:Lagu;

    invoke-virtual {v10, v4}, Lagu;->a(I)V

    .line 102
    .end local v1    # "i":I
    .end local v3    # "selectId":Ljava/lang/String;
    .end local v4    # "selectIndex":I
    :cond_3
    iget-object v10, p0, Lcom/iflytek/viafly/guide/UserGuideCustomSpeakerView;->b:Lagu;

    invoke-virtual {v10}, Lagu;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 91
    .restart local v1    # "i":I
    .restart local v3    # "selectId":Ljava/lang/String;
    .restart local v4    # "selectIndex":I
    .restart local v6    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public b()V
    .locals 5

    .prologue
    .line 107
    iget-object v2, p0, Lcom/iflytek/viafly/guide/UserGuideCustomSpeakerView;->b:Lagu;

    invoke-virtual {v2}, Lagu;->a()I

    move-result v0

    .line 108
    .local v0, "currentIndex":I
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/guide/UserGuideCustomSpeakerView;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/guide/UserGuideCustomSpeakerView;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 113
    .local v1, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v2

    invoke-virtual {v2}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 114
    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v3

    invoke-virtual {v3}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    :cond_2
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_GLOBAL_ROLE_USAGE_TYPE"

    const-string/jumbo v4, "role"

    invoke-virtual {v2, v3, v4}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lil;->a(Ljava/lang/String;I)V

    .line 122
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbbi;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    goto :goto_0
.end method
