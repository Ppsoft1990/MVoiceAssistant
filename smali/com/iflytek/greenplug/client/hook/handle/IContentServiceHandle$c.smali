.class Lcom/iflytek/greenplug/client/hook/handle/IContentServiceHandle$c;
.super Lcom/iflytek/greenplug/client/hook/handle/IContentServiceHandle$a;
.source "IContentServiceHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IContentServiceHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/handle/IContentServiceHandle$a;-><init>(Landroid/content/Context;)V

    .line 69
    return-void
.end method
