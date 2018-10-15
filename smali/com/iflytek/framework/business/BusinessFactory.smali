.class public final Lcom/iflytek/framework/business/BusinessFactory;
.super Ljava/lang/Object;
.source "BusinessFactory.java"


# static fields
.field private static mBussinessManager:Lcom/iflytek/framework/business/interfaces/IBussinessManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance()V
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/iflytek/framework/business/BusinessFactory;->mBussinessManager:Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    if-nez v0, :cond_0

    .line 20
    const-string/jumbo v0, "Business"

    const-string/jumbo v1, "createInstance"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance v0, Lcom/iflytek/framework/business/BusinessManagerImpl;

    invoke-direct {v0}, Lcom/iflytek/framework/business/BusinessManagerImpl;-><init>()V

    sput-object v0, Lcom/iflytek/framework/business/BusinessFactory;->mBussinessManager:Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    .line 23
    :cond_0
    return-void
.end method

.method public static getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/iflytek/framework/business/BusinessFactory;->mBussinessManager:Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    if-nez v0, :cond_0

    .line 31
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->createInstance()V

    .line 34
    :cond_0
    sget-object v0, Lcom/iflytek/framework/business/BusinessFactory;->mBussinessManager:Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    return-object v0
.end method
