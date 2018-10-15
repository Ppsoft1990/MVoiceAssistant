.class Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder$1;
.super Ljava/lang/Object;
.source "IHeadsetAidlInterfaceBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder;->startLoginActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder;


# direct methods
.method constructor <init>(Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder$1;->this$0:Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 74
    iget-object v0, p0, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder$1;->this$0:Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder;

    invoke-static {v0}, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder;->access$000(Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder$1;->this$0:Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder;

    invoke-static {v1}, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder;->access$000(Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/iflytek/common/cmccauth/log/AuthScene;->FORGROUND_ACTIVE:Lcom/iflytek/common/cmccauth/log/AuthScene;

    const-string/jumbo v4, "mobius"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;Lnd;Lcom/iflytek/common/cmccauth/log/AuthScene;Ljava/lang/String;)V

    .line 75
    return-void
.end method
