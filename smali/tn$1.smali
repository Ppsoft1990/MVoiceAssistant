.class Ltn$1;
.super Ljava/lang/Object;
.source "UserVoiceRegisterFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltn;


# direct methods
.method constructor <init>(Ltn;)V
    .locals 0
    .param p1, "this$0"    # Ltn;

    .prologue
    .line 168
    iput-object p1, p0, Ltn$1;->a:Ltn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 172
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 208
    :cond_0
    :goto_0
    return v2

    .line 174
    :pswitch_0
    const-string/jumbo v0, "UserVoiceRegisterFragment"

    const-string/jumbo v1, "onTouch ACTION_DOWN"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Ltn$1;->a:Ltn;

    invoke-static {v0}, Ltn;->a(Ltn;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Ltn$1;->a:Ltn;

    const-string/jumbo v1, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Ltn;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Ltn$1;->a:Ltn;

    invoke-virtual {v0}, Ltn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lpf;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 182
    iget-object v0, p0, Ltn$1;->a:Ltn;

    iput-boolean v2, v0, Ltn;->a:Z

    .line 184
    iget-object v0, p0, Ltn$1;->a:Ltn;

    invoke-virtual {v0}, Ltn;->b()V

    goto :goto_0

    .line 186
    :cond_2
    iget-object v0, p0, Ltn$1;->a:Ltn;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ltn;->a:Z

    .line 187
    iget-object v0, p0, Ltn$1;->a:Ltn;

    invoke-static {v0}, Ltn;->b(Ltn;)V

    goto :goto_0

    .line 192
    :pswitch_1
    const-string/jumbo v0, "UserVoiceRegisterFragment"

    const-string/jumbo v1, "onTouch ACTION_UP"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Ltn$1;->a:Ltn;

    iget-boolean v0, v0, Ltn;->a:Z

    if-nez v0, :cond_3

    .line 195
    const-string/jumbo v0, "UserVoiceRegisterFragment"

    const-string/jumbo v1, "onTouch ACTION_UP return, no mic permission"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    :cond_3
    iget-object v0, p0, Ltn$1;->a:Ltn;

    invoke-static {v0}, Ltn;->c(Ltn;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Ltn$1;->a:Ltn;

    invoke-static {v0}, Ltn;->d(Ltn;)V

    .line 204
    iget-object v0, p0, Ltn$1;->a:Ltn;

    invoke-virtual {v0}, Ltn;->g()V

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
