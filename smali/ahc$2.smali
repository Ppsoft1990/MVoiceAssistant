.class Lahc$2;
.super Lasi$a;
.source "HomeHeadsetHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahc;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahc;


# direct methods
.method constructor <init>(Lahc;)V
    .locals 0
    .param p1, "this$0"    # Lahc;

    .prologue
    .line 162
    iput-object p1, p0, Lahc$2;->a:Lahc;

    invoke-direct {p0}, Lasi$a;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeHandlePlugin(I)Z
    .locals 1
    .param p1, "pluginType"    # I

    .prologue
    .line 165
    invoke-super {p0, p1}, Lasi$a;->beforeHandlePlugin(I)Z

    move-result v0

    return v0
.end method
