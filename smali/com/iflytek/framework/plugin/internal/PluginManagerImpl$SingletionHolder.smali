.class Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$SingletionHolder;
.super Ljava/lang/Object;
.source "PluginManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingletionHolder"
.end annotation


# static fields
.field static mInstance:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;-><init>(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$1;)V

    sput-object v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$SingletionHolder;->mInstance:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
