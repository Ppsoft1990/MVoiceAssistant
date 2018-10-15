.class final Lcom/iflytek/base/skin/ThemeManagerCache$InstanceHolder;
.super Ljava/lang/Object;
.source "ThemeManagerCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/base/skin/ThemeManagerCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InstanceHolder"
.end annotation


# static fields
.field static instance:Lcom/iflytek/base/skin/ThemeManagerCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/iflytek/base/skin/ThemeManagerCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iflytek/base/skin/ThemeManagerCache;-><init>(Lcom/iflytek/base/skin/ThemeManagerCache$1;)V

    sput-object v0, Lcom/iflytek/base/skin/ThemeManagerCache$InstanceHolder;->instance:Lcom/iflytek/base/skin/ThemeManagerCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
