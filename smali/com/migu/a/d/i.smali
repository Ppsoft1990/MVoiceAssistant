.class public Lcom/migu/a/d/i;
.super Ljava/lang/Object;
.source "Shared.java"


# static fields
.field static bE:Ljava/lang/String;

.field static bF:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-string/jumbo v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    sput-object v0, Lcom/migu/a/d/i;->bE:Ljava/lang/String;

    .line 6
    const/16 v0, 0x3d

    sput-char v0, Lcom/migu/a/d/i;->bF:C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
