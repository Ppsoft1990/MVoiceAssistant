.class Ltu$a;
.super Ljava/lang/Object;
.source "MutualActivateGrayCtrlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static a:Ltu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ltu;

    invoke-direct {v0}, Ltu;-><init>()V

    sput-object v0, Ltu$a;->a:Ltu;

    return-void
.end method

.method static synthetic a()Ltu;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Ltu$a;->a:Ltu;

    return-object v0
.end method
