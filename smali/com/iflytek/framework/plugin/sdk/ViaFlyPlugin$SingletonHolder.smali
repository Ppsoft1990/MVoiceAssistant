.class Lcom/iflytek/framework/plugin/sdk/ViaFlyPlugin$SingletonHolder;
.super Ljava/lang/Object;
.source "ViaFlyPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/plugin/sdk/ViaFlyPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingletonHolder"
.end annotation


# static fields
.field static mInstance:Lcom/iflytek/framework/plugin/sdk/ViaFlyPlugin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/iflytek/framework/plugin/sdk/ViaFlyPlugin;

    invoke-direct {v0}, Lcom/iflytek/framework/plugin/sdk/ViaFlyPlugin;-><init>()V

    sput-object v0, Lcom/iflytek/framework/plugin/sdk/ViaFlyPlugin$SingletonHolder;->mInstance:Lcom/iflytek/framework/plugin/sdk/ViaFlyPlugin;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
