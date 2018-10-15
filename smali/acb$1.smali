.class final Lacb$1;
.super Ljava/lang/Object;
.source "StartNewInteractionHelperTemp.java"

# interfaces
.implements Lacs;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacb;->a(Lacp;Laau;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacp;

.field final synthetic b:Laau;


# direct methods
.method constructor <init>(Lacp;Laau;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lacb$1;->a:Lacp;

    iput-object p2, p0, Lacb$1;->b:Laau;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lacb$1;->a:Lacp;

    iget-object v1, p0, Lacb$1;->b:Laau;

    invoke-virtual {v1}, Laau;->getFocus()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lacp;->reStartReco(Ljava/lang/String;)V

    .line 305
    return-void
.end method
