.class public Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;
.super Lcom/iflytek/viafly/voicerole/view/AbsVoiceRoleChooseView;
.source "OfflineVoiceView.java"

# interfaces
.implements Lbbh;
.implements Lno$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;
    }
.end annotation


# instance fields
.field private b:Landroid/widget/GridView;

.field private c:Lbbc;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Lno;

.field private h:Lbbk;

.field private i:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;

.field private j:Lic;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "mEntryType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    .local p2, "speakers":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/voicerole/view/AbsVoiceRoleChooseView;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->f:Z

    .line 345
    new-instance v0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$1;-><init>(Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->j:Lic;

    .line 71
    iput-object p2, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->e:Ljava/util/List;

    .line 72
    iput-object p3, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->d:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->a()V

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;)Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->i:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/iflytek/viafly/voicerole/model/Status;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/iflytek/viafly/voicerole/model/Status;

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->b(Ljava/lang/String;Lcom/iflytek/viafly/voicerole/model/Status;)V

    .line 225
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->i:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;->sendEmptyMessage(I)Z

    .line 226
    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 459
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 467
    :goto_0
    return-object v0

    .line 462
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 463
    .local v0, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v0    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_2
    move-object v0, v1

    .line 467
    goto :goto_0
.end method

.method private b(Ljava/lang/String;Lcom/iflytek/viafly/voicerole/model/Status;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/iflytek/viafly/voicerole/model/Status;

    .prologue
    .line 449
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->e:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 450
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 451
    .local v0, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->a(Lcom/iflytek/viafly/voicerole/model/Status;)V

    goto :goto_0

    .line 456
    .end local v0    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_1
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$2;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$2;-><init>(Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;)V

    invoke-static {v1, v0, v2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Lpj;)V

    .line 497
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v3, -0x1

    .line 81
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 82
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 83
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030130

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 84
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    new-instance v3, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;-><init>(Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;)V

    iput-object v3, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->i:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;

    .line 88
    const v3, 0x7f0b06da

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->b:Landroid/widget/GridView;

    .line 89
    new-instance v3, Lbbc;

    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->e:Ljava/util/List;

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, p0, v6}, Lbbc;-><init>(Landroid/content/Context;Ljava/util/List;Lbbh;I)V

    iput-object v3, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->c:Lbbc;

    .line 90
    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->b:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->c:Lbbc;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->j:Lic;

    invoke-virtual {v3, v4}, Lie;->a(Lic;)V

    .line 93
    new-instance v3, Lbbk;

    invoke-direct {v3}, Lbbk;-><init>()V

    iput-object v3, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->h:Lbbk;

    .line 94
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->g:Lno;

    .line 95
    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->g:Lno;

    const-string/jumbo v4, "OfflineVoiceView"

    invoke-virtual {v3, v4, p0}, Lno;->a(Ljava/lang/String;Lno$c;)V

    .line 96
    return-void
.end method

.method public a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 6
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 186
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbbl;->a(Landroid/content/Context;)Lbbl;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->d:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lbbl;->b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c02b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->a(Ljava/lang/String;)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->i:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;

    invoke-virtual {v1, v5}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 203
    :cond_2
    iget-boolean v1, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->f:Z

    if-eqz v1, :cond_3

    .line 204
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->i:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;

    invoke-virtual {v1, v5}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;->sendEmptyMessage(I)Z

    .line 207
    :cond_3
    iput-boolean v4, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->f:Z

    .line 208
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 209
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 210
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 211
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->i:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 213
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->i:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 332
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 334
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 335
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 336
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->i:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;->sendMessage(Landroid/os/Message;)Z

    .line 338
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->i:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;->removeMessages(I)V

    .line 154
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->c:Lbbc;

    invoke-virtual {v0}, Lbbc;->notifyDataSetChanged()V

    .line 155
    return-void
.end method

.method public b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 0
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    .line 220
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 161
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 162
    .local v0, "voiceBaseModel1":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Z)V

    goto :goto_0

    .line 164
    .end local v0    # "voiceBaseModel1":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_0
    iput-boolean v3, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->f:Z

    .line 165
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->i:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;->sendEmptyMessage(I)Z

    .line 166
    return-void
.end method

.method public c(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 7
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    const/4 v4, 0x1

    .line 231
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->h:Lbbk;

    invoke-virtual {v0, p1}, Lbbk;->c(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-direct {p0, v0, v3}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->a(Ljava/lang/String;Lcom/iflytek/viafly/voicerole/model/Status;)V

    .line 237
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->i:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 241
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 242
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0c02b1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->a(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_ERROR:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-direct {p0, v0, v3}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->a(Ljava/lang/String;Lcom/iflytek/viafly/voicerole/model/Status;)V

    .line 244
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->i:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 247
    :cond_3
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADING:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-direct {p0, v0, v3}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->a(Ljava/lang/String;Lcom/iflytek/viafly/voicerole/model/Status;)V

    .line 250
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v3}, Lpd;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 251
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->f()V

    goto :goto_0

    .line 256
    :cond_4
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->b()Ljava/lang/String;

    move-result-object v5

    .line 257
    .local v5, "url":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 258
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_ERROR:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-direct {p0, v0, v3}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->a(Ljava/lang/String;Lcom/iflytek/viafly/voicerole/model/Status;)V

    goto :goto_0

    .line 262
    :cond_5
    const-string/jumbo v2, "download_voice_res_zip"

    .line 263
    .local v2, "entryType":Ljava/lang/String;
    const/16 v1, 0x15

    .line 264
    .local v1, "downloadFileType":I
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->g:Lno;

    const/4 v3, 0x0

    .line 265
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->h:Lbbk;

    invoke-virtual {v6, p1}, Lbbk;->f(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Ljava/lang/String;

    move-result-object v6

    .line 264
    invoke-virtual/range {v0 .. v6}, Lno;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->i:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->i:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;->sendEmptyMessage(I)Z

    .line 316
    :cond_0
    return-void
.end method

.method public d(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 4
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    .line 270
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v1

    if-nez v1, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_PAUSED:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->a(Ljava/lang/String;Lcom/iflytek/viafly/voicerole/model/Status;)V

    .line 274
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->b()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "linkUrl":Ljava/lang/String;
    const-string/jumbo v1, "OfflineVoiceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPauseDownload url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->g:Lno;

    invoke-virtual {v1, v0}, Lno;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public downloadError(ILandroid/content/Intent;)V
    .locals 8
    .param p1, "errorCode"    # I
    .param p2, "pEerrorIntent"    # Landroid/content/Intent;

    .prologue
    .line 413
    const-string/jumbo v5, "OfflineVoiceView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "downloadError: errorCode ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    if-nez p2, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    const-string/jumbo v5, "type"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 419
    .local v2, "type":I
    const/16 v5, 0x15

    if-ne v2, v5, :cond_0

    .line 420
    const-string/jumbo v5, "url"

    .line 421
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 422
    .local v3, "url":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->b(Ljava/lang/String;)Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v4

    .line 423
    .local v4, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-eqz v4, :cond_0

    .line 426
    const/16 v5, 0x38b

    if-ne v5, p1, :cond_2

    .line 427
    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->g:Lno;

    invoke-virtual {v5, v3}, Lno;->f(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v0

    .line 428
    .local v0, "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, "filepath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 431
    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-direct {p0, v5, v6}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->a(Ljava/lang/String;Lcom/iflytek/viafly/voicerole/model/Status;)V

    .line 432
    const-string/jumbo v5, "OfflineVoiceView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "downloadError: EXIST_FINISH_TASK ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 436
    .end local v0    # "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    .end local v1    # "filepath":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->a(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_ERROR:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-direct {p0, v5, v6}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->a(Ljava/lang/String;Lcom/iflytek/viafly/voicerole/model/Status;)V

    goto :goto_0
.end method

.method public downloadStatusChanged(Landroid/content/Intent;)V
    .locals 8
    .param p1, "pStatusIntent"    # Landroid/content/Intent;

    .prologue
    .line 373
    const-string/jumbo v5, "OfflineVoiceView"

    const-string/jumbo v6, "downloadStatusChanged"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    if-nez p1, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    const-string/jumbo v5, "type"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 379
    .local v2, "type":I
    const-string/jumbo v5, "OfflineVoiceView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/16 v5, 0x15

    if-ne v2, v5, :cond_0

    .line 381
    const-string/jumbo v5, "url"

    .line 382
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 383
    .local v3, "url":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->b(Ljava/lang/String;)Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v4

    .line 384
    .local v4, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 387
    const-string/jumbo v5, "OfflineVoiceView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->c()Lcom/iflytek/viafly/voicerole/model/Status;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    sget-object v5, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADING:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->c()Lcom/iflytek/viafly/voicerole/model/Status;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iflytek/viafly/voicerole/model/Status;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 389
    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->g:Lno;

    invoke-virtual {v5, v3}, Lno;->e(Ljava/lang/String;)V

    .line 407
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->i:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 392
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "OfflineVoiceView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "action:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string/jumbo v5, "com.iflytek.cmcccom.iflytek.yd.download.finished"

    .line 395
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 396
    const-string/jumbo v5, "file_path"

    .line 397
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "filePath":Ljava/lang/String;
    const-string/jumbo v5, "OfflineVoiceView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "filePath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->h:Lbbk;

    invoke-virtual {v5, v4}, Lbbk;->c(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 400
    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-direct {p0, v5, v6}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->a(Ljava/lang/String;Lcom/iflytek/viafly/voicerole/model/Status;)V

    goto :goto_1

    .line 402
    :cond_4
    const-string/jumbo v5, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->a(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_ERROR:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-direct {p0, v5, v6}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->a(Ljava/lang/String;Lcom/iflytek/viafly/voicerole/model/Status;)V

    goto :goto_1
.end method

.method public e()V
    .locals 2

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->i:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->i:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->i:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;->sendEmptyMessage(I)Z

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->g:Lno;

    const-string/jumbo v1, "OfflineVoiceView"

    invoke-virtual {v0, v1}, Lno;->a(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public e(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 3
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    .line 281
    if-nez p1, :cond_0

    .line 306
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 285
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Lpd;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 286
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADING:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->a(Ljava/lang/String;Lcom/iflytek/viafly/voicerole/model/Status;)V

    .line 287
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->h:Lbbk;

    invoke-virtual {v1, p1}, Lbbk;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->h:Lbbk;

    invoke-virtual {v1, p1}, Lbbk;->b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->a(Ljava/lang/String;Lcom/iflytek/viafly/voicerole/model/Status;)V

    goto :goto_0

    .line 292
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->h:Lbbk;

    invoke-virtual {v1, p1}, Lbbk;->c(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 293
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->a(Ljava/lang/String;Lcom/iflytek/viafly/voicerole/model/Status;)V

    goto :goto_0

    .line 298
    :cond_2
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->k()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "linkUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->g:Lno;

    invoke-virtual {v1, v0}, Lno;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 301
    .end local v0    # "linkUrl":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->f()V

    goto :goto_0

    .line 304
    :cond_4
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c02b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public f(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 5
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    const/4 v4, 0x1

    .line 170
    if-nez p1, :cond_0

    .line 181
    :goto_0
    return-void

    .line 173
    :cond_0
    iput-boolean v4, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->f:Z

    .line 174
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 175
    .local v0, "voiceBaseModel1":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Z)V

    .line 180
    .end local v0    # "voiceBaseModel1":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->i:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public installStatusChanged(Landroid/content/Intent;)V
    .locals 0
    .param p1, "installIntent"    # Landroid/content/Intent;

    .prologue
    .line 445
    return-void
.end method

.method public setEntryType(Ljava/lang/String;)V
    .locals 0
    .param p1, "entryType"    # Ljava/lang/String;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->d:Ljava/lang/String;

    .line 342
    return-void
.end method
