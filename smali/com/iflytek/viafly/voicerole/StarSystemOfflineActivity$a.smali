.class Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity$a;
.super Landroid/os/Handler;
.source "StarSystemOfflineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 211
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 212
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 216
    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;

    .line 217
    .local v0, "outer":Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;
    if-eqz v0, :cond_0

    .line 218
    const/4 v3, 0x1

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_1

    .line 219
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lbbo;

    .line 220
    .local v2, "voiceRoleModel":Lbbo;
    invoke-static {v0, v2}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->a(Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;Lbbo;)V

    .line 239
    .end local v2    # "voiceRoleModel":Lbbo;
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    const/4 v3, 0x2

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_2

    .line 223
    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->a(Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 224
    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->b(Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 225
    :cond_2
    const/4 v3, 0x3

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_3

    .line 227
    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->b(Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 228
    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->a(Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 230
    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->c(Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->a(Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 231
    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->e(Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v3

    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;->d(Lcom/iflytek/viafly/voicerole/StarSystemOfflineActivity;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 232
    :cond_3
    const/4 v3, 0x4

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_0

    .line 233
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 234
    .local v1, "toast":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 235
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
