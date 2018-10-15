.class public Lcom/iflytek/greenplug/common/PluginClassLoader;
.super Ldalvik/system/DexClassLoader;
.source "PluginClassLoader.java"


# static fields
.field private static final sPreLoader:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/iflytek/greenplug/common/PluginClassLoader;->sPreLoader:Ljava/util/List;

    .line 21
    sget-object v0, Lcom/iflytek/greenplug/common/PluginClassLoader;->sPreLoader:Ljava/util/List;

    const-string/jumbo v1, "QIKU"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "apkfile"    # Ljava/lang/String;
    .param p2, "optimizedDirectory"    # Ljava/lang/String;
    .param p3, "libraryPath"    # Ljava/lang/String;
    .param p4, "systemClassLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 16
    return-void
.end method
