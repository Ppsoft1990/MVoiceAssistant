.class Lto$1;
.super Ljava/lang/Object;
.source "UserVoiceResetFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lto;


# direct methods
.method constructor <init>(Lto;)V
    .locals 0
    .param p1, "this$0"    # Lto;

    .prologue
    .line 104
    iput-object p1, p0, Lto$1;->a:Lto;

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

    .line 107
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 139
    :goto_0
    :pswitch_0
    return v2

    .line 109
    :pswitch_1
    const-string/jumbo v0, "UserVoiceResetFragment"

    const-string/jumbo v1, "onTouch ACTION_DOWN"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lto$1;->a:Lto;

    invoke-static {v0}, Lto;->a(Lto;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lto$1;->a:Lto;

    const-string/jumbo v1, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Lto;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lto$1;->a:Lto;

    invoke-virtual {v0, v3}, Lto;->c(Z)V

    .line 117
    iget-object v0, p0, Lto$1;->a:Lto;

    invoke-virtual {v0}, Lto;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lpf;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lto$1;->a:Lto;

    iput-boolean v2, v0, Lto;->a:Z

    .line 120
    iget-object v0, p0, Lto$1;->a:Lto;

    invoke-virtual {v0}, Lto;->b()V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lto$1;->a:Lto;

    iput-boolean v3, v0, Lto;->a:Z

    .line 123
    iget-object v0, p0, Lto$1;->a:Lto;

    invoke-static {v0}, Lto;->b(Lto;)V

    goto :goto_0

    .line 128
    :pswitch_2
    const-string/jumbo v0, "UserVoiceResetFragment"

    const-string/jumbo v1, "onTouch ACTION_UP"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lto$1;->a:Lto;

    invoke-virtual {v0, v2}, Lto;->c(Z)V

    .line 131
    iget-object v0, p0, Lto$1;->a:Lto;

    iget-boolean v0, v0, Lto;->a:Z

    if-nez v0, :cond_2

    .line 132
    const-string/jumbo v0, "UserVoiceResetFragment"

    const-string/jumbo v1, "onTouch ACTION_UP return, no mic permission"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :cond_2
    invoke-static {}, Ltj;->a()Ltj;

    move-result-object v0

    invoke-virtual {v0}, Ltj;->d()V

    .line 136
    iget-object v0, p0, Lto$1;->a:Lto;

    invoke-virtual {v0}, Lto;->g()V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
