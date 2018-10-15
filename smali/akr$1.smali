.class Lakr$1;
.super Ljava/lang/Object;
.source "ListenBookRecommendPresenter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lakr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lakr;


# direct methods
.method constructor <init>(Lakr;)V
    .locals 0
    .param p1, "this$0"    # Lakr;

    .prologue
    .line 81
    iput-object p1, p0, Lakr$1;->a:Lakr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/os/Message;

    .prologue
    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 86
    :pswitch_0
    iget-object v0, p0, Lakr$1;->a:Lakr;

    invoke-static {v0}, Lakr;->a(Lakr;)V

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
