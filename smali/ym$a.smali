.class public Lym$a;
.super Ljava/lang/Object;
.source "BlcProtocolParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lym;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field final synthetic c:Lym;


# direct methods
.method public constructor <init>(Lym;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lym;
    .param p2, "sName"    # Ljava/lang/String;
    .param p3, "sValue"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lym$a;->c:Lym;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p2, p0, Lym$a;->a:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lym$a;->b:Ljava/lang/String;

    .line 17
    return-void
.end method
