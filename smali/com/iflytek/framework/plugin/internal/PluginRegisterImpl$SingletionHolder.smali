.class Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl$SingletionHolder;
.super Ljava/lang/Object;
.source "PluginRegisterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingletionHolder"
.end annotation


# static fields
.field static mInstance:Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;-><init>(Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl$1;)V

    sput-object v0, Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl$SingletionHolder;->mInstance:Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
