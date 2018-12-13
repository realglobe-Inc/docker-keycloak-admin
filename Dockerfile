FROM jboss/keycloak:4.5.0.Final

ENTRYPOINT ["/opt/jboss/keycloak/bin/kcadm.sh"]

CMD ["help"]

