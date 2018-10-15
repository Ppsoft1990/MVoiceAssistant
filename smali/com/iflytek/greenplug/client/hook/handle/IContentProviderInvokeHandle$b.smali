.class Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$b;
.super Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$a;
.source "IContentProviderInvokeHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$b;->b:Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle$a;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;Landroid/content/Context;)V

    .line 152
    return-void
.end method
