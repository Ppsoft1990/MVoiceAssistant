.class public Lcom/iflytek/xorm/page/Condition;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected field:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getField()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/xorm/page/Condition;->field:Ljava/lang/String;

    return-object v0
.end method
