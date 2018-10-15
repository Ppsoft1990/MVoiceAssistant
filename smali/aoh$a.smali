.class Laoh$a;
.super Ljava/lang/Object;
.source "MiguTokenGrayCtrlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static a:Laoh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Laoh;

    invoke-direct {v0}, Laoh;-><init>()V

    sput-object v0, Laoh$a;->a:Laoh;

    return-void
.end method

.method static synthetic a()Laoh;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Laoh$a;->a:Laoh;

    return-object v0
.end method
