.class final Lcom/iflytek/base/skin/ThemeImagePool$InstanceHolder;
.super Ljava/lang/Object;
.source "ThemeImagePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/base/skin/ThemeImagePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InstanceHolder"
.end annotation


# static fields
.field static instance:Lcom/iflytek/base/skin/ThemeImagePool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/iflytek/base/skin/ThemeImagePool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iflytek/base/skin/ThemeImagePool;-><init>(Lcom/iflytek/base/skin/ThemeImagePool$1;)V

    sput-object v0, Lcom/iflytek/base/skin/ThemeImagePool$InstanceHolder;->instance:Lcom/iflytek/base/skin/ThemeImagePool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
