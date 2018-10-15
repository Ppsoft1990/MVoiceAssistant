.class Ltm$1;
.super Ljava/lang/Object;
.source "UserVoiceLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltm;


# direct methods
.method constructor <init>(Ltm;)V
    .locals 0
    .param p1, "this$0"    # Ltm;

    .prologue
    .line 148
    iput-object p1, p0, Ltm$1;->a:Ltm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 151
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 185
    :goto_0
    :pswitch_0
    return v2

    .line 153
    :pswitch_1
    const-string/jumbo v0, "UserVoiceLoginFragment"

    const-string/jumbo v1, "onTouch ACTION_DOWN"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Ltm$1;->a:Ltm;

    invoke-static {v0}, Ltm;->a(Ltm;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Ltm$1;->a:Ltm;

    const-string/jumbo v1, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Ltm;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Ltm$1;->a:Ltm;

    invoke-virtual {v0, v3}, Ltm;->c(Z)V

    .line 162
    iget-object v0, p0, Ltm$1;->a:Ltm;

    invoke-virtual {v0}, Ltm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lpf;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Ltm$1;->a:Ltm;

    iput-boolean v2, v0, Ltm;->a:Z

    .line 165
    iget-object v0, p0, Ltm$1;->a:Ltm;

    invoke-virtual {v0}, Ltm;->b()V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Ltm$1;->a:Ltm;

    iput-boolean v3, v0, Ltm;->a:Z

    .line 168
    iget-object v0, p0, Ltm$1;->a:Ltm;

    invoke-static {v0}, Ltm;->b(Ltm;)V

    goto :goto_0

    .line 173
    :pswitch_2
    iget-object v0, p0, Ltm$1;->a:Ltm;

    invoke-virtual {v0, v2}, Ltm;->c(Z)V

    .line 175
    iget-object v0, p0, Ltm$1;->a:Ltm;

    iget-boolean v0, v0, Ltm;->a:Z

    if-nez v0, :cond_2

    .line 176
    const-string/jumbo v0, "UserVoiceLoginFragment"

    const-string/jumbo v1, "onTouch ACTION_UP return, no mic permission"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    :cond_2
    const-string/jumbo v0, "UserVoiceLoginFragment"

    const-string/jumbo v1, "onTouch ACTION_UP"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {}, Ltj;->a()Ltj;

    move-result-object v0

    invoke-virtual {v0}, Ltj;->d()V

    .line 182
    iget-object v0, p0, Ltm$1;->a:Ltm;

    invoke-virtual {v0}, Ltm;->g()V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
