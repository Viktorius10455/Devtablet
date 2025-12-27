# Dev Tablet Script - FiveM

## Over dit script
Dit is een simpel maar functioneel **developer tablet script** voor FiveM.  
Met dit script kan een developer via het commando `/devtablet` alle informatie zien die relevant is voor development, zoals spelerdata, serverstatus, logs en meer.

Het doel van dit script is om **developer tools overzichtelijk en makkelijk toegankelijk** te maken met een mooie **UI/NUI layout**.

---

## Functionaliteiten

- `/devtablet` → Opent de tablet voor developers  
- Overzicht van:
  - Spelers online
  - Serverstatus
  - Event logs
  - Custom informatie die je zelf kan toevoegen
- UI/NUI layout voor een nette en overzichtelijke presentatie
- Configuratie mogelijk voor meerdere developers via **license identifiers**

---

## Installatie

1. Plaats de map `dev-tablet` in je `resources` folder.
2. Voeg toe aan `server.cfg`:
```cfg
ensure dev-tablet
