.class Lqq$1$3;
.super Lasi$a;
.source "MainSpeechToolAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqq$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lqq$1;


# direct methods
.method constructor <init>(Lqq$1;)V
    .locals 0
    .param p1, "this$1"    # Lqq$1;

    .prologue
    .line 166
    iput-object p1, p0, Lqq$1$3;->a:Lqq$1;

    invoke-direct {p0}, Lasi$a;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeHandlePlugin(I)Z
    .locals 1
    .param p1, "pluginType"    # I

    .prologue
    .line 169
    invoke-super {p0, p1}, Lasi$a;->beforeHandlePlugin(I)Z

    move-result v0

    return v0
.end method
