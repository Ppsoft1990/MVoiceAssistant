.class Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook$a;
.super Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
.source "ServiceIBinderHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;


# direct methods
.method private constructor <init>(Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook$a;->a:Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;

    .line 64
    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/BaseHookHandle;-><init>(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;Landroid/content/Context;Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook$1;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook$a;-><init>(Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook$a;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "queryLocalInterface"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook$a$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook$a;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook$a$a;-><init>(Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook$a;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ServiceIBinderHook$a;->addAllMethodFromHookedClass()V

    .line 71
    return-void
.end method
