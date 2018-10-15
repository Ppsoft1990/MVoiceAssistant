.class public Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;
.super Lcom/iflytek/viafly/voicerole/view/AbsVoiceRoleChooseView;
.source "SystemVoiceView.java"

# interfaces
.implements Lbbh;
.implements Lju;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;
    }
.end annotation


# instance fields
.field private b:Landroid/widget/GridView;

.field private c:Lbbc;

.field private d:Lpp;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;


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
    .line 61
    .local p2, "speakers":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/voicerole/view/AbsVoiceRoleChooseView;-><init>(Landroid/content/Context;)V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->g:Z

    .line 62
    iput-object p2, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->f:Ljava/util/List;

    .line 63
    iput-object p3, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->e:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->a()V

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;)Lpp;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->d:Lpp;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v3, -0x1

    .line 72
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 74
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030130

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 75
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance v3, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;-><init>(Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;)V

    iput-object v3, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->h:Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;

    .line 79
    const v3, 0x7f0b06da

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->b:Landroid/widget/GridView;

    .line 80
    new-instance v3, Lbbc;

    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->f:Ljava/util/List;

    const/4 v6, 0x2

    invoke-direct {v3, v4, v5, p0, v6}, Lbbc;-><init>(Landroid/content/Context;Ljava/util/List;Lbbh;I)V

    iput-object v3, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->c:Lbbc;

    .line 81
    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->c:Lbbc;

    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v4

    invoke-virtual {v4}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbbc;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    .line 82
    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->b:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->c:Lbbc;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    new-instance v3, Lpp;

    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lpp;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->d:Lpp;

    .line 85
    return-void
.end method

.method public a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 5
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    const/4 v4, 0x3

    .line 173
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbbl;->a(Landroid/content/Context;)Lbbl;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->e:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lbbl;->b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->h:Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;->sendEmptyMessage(I)Z

    .line 192
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-boolean v1, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->g:Z

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->h:Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;->sendEmptyMessage(I)Z

    .line 182
    :cond_1
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 184
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 185
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 186
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->h:Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 191
    .end local v0    # "message":Landroid/os/Message;
    :goto_1
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->h:Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 188
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->a:Landroid/content/Context;

    const v2, 0x7f0c02b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 262
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 263
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 264
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->h:Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;->sendMessage(Landroid/os/Message;)Z

    .line 266
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->h:Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;->removeMessages(I)V

    .line 140
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->c:Lbbc;

    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v1

    invoke-virtual {v1}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbc;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    .line 141
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->c:Lbbc;

    invoke-virtual {v0}, Lbbc;->notifyDataSetChanged()V

    .line 142
    return-void
.end method

.method public b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 3
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    .line 197
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v0

    invoke-virtual {v0}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v1

    invoke-virtual {v1}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbbl;->a(Landroid/content/Context;)Lbbl;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->e:Ljava/lang/String;

    const/4 v2, 0x0

    .line 204
    invoke-virtual {v0, p1, v1, v2}, Lbbl;->c(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_GLOBAL_ROLE_USAGE_TYPE"

    const-string/jumbo v2, "role"

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;I)V

    .line 211
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbbi;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v1

    invoke-virtual {v1}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u8bed\u97f3\u8bbe\u7f6e\u6210\u529f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->a(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->h:Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 148
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 149
    .local v0, "voiceBaseModel1":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Z)V

    goto :goto_0

    .line 151
    .end local v0    # "voiceBaseModel1":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_0
    iput-boolean v3, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->g:Z

    .line 152
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->h:Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;->sendEmptyMessage(I)Z

    .line 153
    return-void
.end method

.method public c(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 0
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    .line 220
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->h:Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->h:Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;->sendEmptyMessage(I)Z

    .line 240
    :cond_0
    return-void
.end method

.method public d(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 0
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    .line 225
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 248
    :try_start_0
    iget-boolean v1, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->g:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->h:Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->h:Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 250
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->h:Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SpeakerChooseView"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public e(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 0
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    .line 230
    return-void
.end method

.method public f(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 5
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    const/4 v4, 0x1

    .line 157
    if-nez p1, :cond_0

    .line 168
    :goto_0
    return-void

    .line 160
    :cond_0
    iput-boolean v4, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->g:Z

    .line 161
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 162
    .local v0, "voiceBaseModel1":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Z)V

    .line 167
    .end local v0    # "voiceBaseModel1":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->h:Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onInterruptedCallback()V
    .locals 2

    .prologue
    .line 304
    const-string/jumbo v0, "SpeakerChooseView"

    const-string/jumbo v1, "onInterruptedCallback"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->h:Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView$a;->sendEmptyMessage(I)Z

    .line 306
    return-void
.end method

.method public onPlayBeginCallBack()V
    .locals 2

    .prologue
    .line 282
    const-string/jumbo v0, "SpeakerChooseView"

    const-string/jumbo v1, "onPlayBeginCallBack"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    .line 287
    const-string/jumbo v1, "SpeakerChooseView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPlayCompletedCallBack errorCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v0, 0x0

    .line 291
    .local v0, "toastText":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 292
    const v1, 0xc3508

    if-ne v1, p1, :cond_1

    .line 293
    const-string/jumbo v0, "\u7f51\u7edc\u672a\u8fde\u63a5,\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 298
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->a(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->c()V

    .line 300
    return-void

    .line 295
    :cond_1
    const-string/jumbo v0, "\u64ad\u653e\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    goto :goto_0
.end method

.method public onPlayPauseCallBack()V
    .locals 2

    .prologue
    .line 310
    const-string/jumbo v0, "SpeakerChooseView"

    const-string/jumbo v1, "onPlayPauseCallBack"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 2

    .prologue
    .line 315
    const-string/jumbo v0, "SpeakerChooseView"

    const-string/jumbo v1, "onPlayResumeCallBack"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 278
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 321
    return-void
.end method

.method public setEntryType(Ljava/lang/String;)V
    .locals 0
    .param p1, "entryType"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/view/SystemVoiceView;->e:Ljava/lang/String;

    .line 270
    return-void
.end method
