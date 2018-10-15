.class public Laqm$a;
.super Ljava/lang/Object;
.source "NewsDetailErrorTipHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laqm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static a:Lwc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Laqm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laqm;-><init>(Laqm$1;)V

    sput-object v0, Laqm$a;->a:Lwc;

    return-void
.end method

.method static synthetic a()Lwc;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Laqm$a;->a:Lwc;

    return-object v0
.end method
